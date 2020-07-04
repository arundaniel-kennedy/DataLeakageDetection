from flask import Flask,render_template,request,redirect,url_for,session
from flask_session import Session
import requests
from bs4 import BeautifulSoup
import mysql.connector
import os
import tempfile
import subprocess
from search import *
import bcrypt
from faker import Faker
fake = Faker()

config = {
  'user': 'root',
  'password': 'root',
  'host': 'localhost',
  'database': 'dld',
  'raise_on_warnings': True,
}

link = mysql.connector.connect(**config)
mycursor = link.cursor(buffered=True)

app = Flask(__name__)
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

@app.route('/')
def index():
    return render_template("index.html")

@app.route('/login',methods=['POST'])
def login():
    email = request.form['email']
    password = request.form['password']

    mycursor.execute("SELECT * FROM login ")
    myresult = mycursor.fetchone()
    if(myresult!=''):
        if(password == myresult[2]):
            if(myresult[3]==1):
                return render_template("admin/index.html")
            else:
                session['id'] = myresult[0]
                return redirect(url_for("agents"))
        else:
            return render_template("/index.html")
    else:
        return render_template("/index.html")

@app.route('/admin')
def adminindex():
    return render_template("admin/index.html")

@app.route('/admin/search')
def search():
    return render_template("admin/search.html")

@app.route('/admin/scrap',methods=['POST'])
def scrap():
    urls = request.form['sites']
    urls = urls.strip().split()

    mycursor.execute("select value from data")
    data = mycursor.fetchall()
    #print(set(data)
    reti = html(urls,data) # getting data that was found

    vt = [] #agent id (vt)
    for j in reti:
        mycursor.execute("select agent from data where value='"+j+"'")
        vti = mycursor.fetchone()
        vt.append(vti[0])

    agents = [] #agent name
    res = []
    w = 0
    for ids in vt:
        ids = ids.split(",")
        agent =[]
        for id in ids:
            mycursor.execute("select name from agent where id='"+id+"'")
            ba = mycursor.fetchone()
            agent.append(ba[0])
        res.append((agent,reti[w]))
        agents.append(agent)
        w+=1;

    pg = {}
    for i in agents:
      for j in i:
          pg[j] = []

    for pp in range(0, 11, 1):
      p = pp/10
      pr = {}
      for i in agents:
          for j in i:
              pr[j] = 1
      for agrp in agents:
          s = len(agrp)
          for agent in agrp:
              pr[agent] *= 1-((1-p)/s)
      for key in pr:
          val = 1-pr[key]
          pg[key].append(val)
    return pg #render_template("admin/result.html",result=res)

@app.route('/admin/agent')
def agent():

    mycursor.execute("select * from agent")
    myresult = mycursor.fetchall()

    return render_template("admin/agent.html", res = myresult)

@app.route('/admin/addagent')
def addagent():
    return render_template("admin/addagent.html")

@app.route('/admin/saveagent',methods=['POST'])
def saveagent():
    name = request.form['name']
    email = request.form['email']
    password = request.form['password']

    mycursor.execute("INSERT INTO `login` (`email`, `password`) VALUES ('"+email+"', '"+password+"')")
    link.commit()

    id = str(mycursor.lastrowid)

    mycursor.execute("INSERT INTO `agent` (`id`, `name`) VALUES ('"+id+"', '"+name+"')")
    link.commit()

    return redirect(url_for("agent"))

@app.route('/admin/blockagent',methods=['POST'])
def blockagent():
    id = request.form['id']

    mycursor.execute("update agent set status='Blocked' where id='"+id+"'")
    link.commit()

    return redirect(url_for("agent"))

@app.route('/admin/editaccess',methods=['POST'])
def editaccess():
    id = request.form['id']

    mycursor.execute("select * from data")
    myresult = mycursor.fetchall()

    data = []
    for x in myresult:
        if(x[2]=="null" or x[2]==None):
            fff = ''
        else:
            sd = x[2].split(",")
            if id in sd:
                data.append(x)

    return render_template("admin/editaccess.html",data = data,res = myresult,id=id)

@app.route('/admin/addaccess',methods=['POST'])
def addaccess():
    id = request.form["id"]
    data = request.form['dats'].split("-")
    data = [int(i) for i in data]

    datas = []
    for i in range(data[0],data[1]+1):
        datas.append(i)

    for data in datas:
        mycursor.execute("select agent from data where id='"+str(data)+"'")
        myresult = mycursor.fetchone()
        if(myresult[0]=="null" or myresult[0]==None):
            age = str(id)
        else:
            age = myresult[0]+","+str(id)
        #print(age)
        mycursor.execute("update data set agent='"+age+"' where id='"+str(data)+"'")
        link.commit()


    return redirect(url_for("agent"))

@app.route('/admin/data')
def data():
    mycursor.execute("select * from data")
    myresult = mycursor.fetchall()

    return render_template("admin/data.html",res = myresult)

@app.route('/admin/fakedata')
def fakedata():
    mycursor.execute("select * from fake")
    myresult = mycursor.fetchall()

    return render_template("admin/fakedata.html",res = myresult)

@app.route('/admin/addfakedata',methods=['POST'])
def addfakedata():
    num = int(request.form["num"])

    for i in range(0,num):
        elem = fake.email()+":"+fake.password()
        mycursor.execute("INSERT INTO `fake` (`value`) VALUES ('"+elem+"')")
        link.commit()

    return redirect(url_for("fakedata"))


@app.route('/admin/adddata')
def adddata():
    return render_template("admin/adddata.html")

@app.route('/admin/savedata',methods=['POST'])
def savedata():
    values = request.form['values']

    values = values.replace("\r","").split("\n")

    for value in values:
        mycursor.execute("INSERT INTO `data` (`value`) VALUES ('"+value+"')")
        link.commit()

    return redirect(url_for("data"))

@app.route('/agent')
def agents():
    id = session['id']
    #print(id)

    mycursor.execute("select * from data")
    myresult = mycursor.fetchall()

    data = []
    for x in myresult:
        if(x[2]=="null" or x[2]==None):
            fff = ''
        else:
            sd = x[2].split(",")
            #print(sd)
            if str(id) in sd:
                data.append(x)
    return render_template("agent/index.html",res = data)

if __name__ == "__main__":
    app.run(host='192.168.1.4', port=40974,debug=True)
