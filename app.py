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

    mycursor.execute("SELECT * FROM login where email='"+email+"'")
    myresult = mycursor.fetchone()
    if(len(myresult)>0):
        if bcrypt.checkpw(password.encode('utf-8') , myresult[2].encode('utf-8')):
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
    data = request.form['data']
    reti = html(urls,data)
    return render_template("admin/result.html",result=reti)

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

    mycursor.execute("select access from agent where id='"+id+"'")
    access = mycursor.fetchone()

    data = []
    if(access[0]=="null"):
        data=[]
    else:
        acci = access[0].split(",")
        for f in acci:
            mycursor.execute("select * from data where block='"+f+"'")
            data = data + mycursor.fetchall()

    mycursor.execute("select * from data where block is NULL")
    myresult = mycursor.fetchall()

    return render_template("admin/editaccess.html",data = data,res = myresult,id=id)

@app.route('/admin/addaccess',methods=['POST'])
def addaccess():
    id = request.form["id"]
    data = request.form['dats'].split("-")
    data = [int(i) for i in data]

    datas = []
    for i in range(data[0],data[1]+1):
        datas.append(i)

    mycursor.execute("select val from indexing where id=1")
    valu = mycursor.fetchone()

    valu = valu[0]+1

    mycursor.execute("update indexing set val='"+str(valu)+"' where id='1'")
    link.commit()

    for j in datas:
        mycursor.execute("update data set block='d"+str(valu)+"' where id='"+str(j)+"'")
        link.commit()

    mycursor.execute("select access from agent where id='"+id+"'")
    access = mycursor.fetchone()

    if(access[0]!="null"):
        acc = access[0]+",d"+str(valu)
    else:
        acc = "d"+str(valu)

    mycursor.execute("update agent set access='"+acc+"' where id='"+str(id)+"'")
    link.commit()

    return redirect(url_for("agent"))

@app.route('/admin/data')
def data():
    mycursor.execute("select * from data")
    myresult = mycursor.fetchall()

    return render_template("admin/data.html",res = myresult)

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

    mycursor.execute("select access from agent where id='"+str(id)+"'")
    access = mycursor.fetchone()

    data = []
    if(access[0]=="null"):
        data=[]
    else:
        acci = access[0].split(",")
        for f in acci:
            mycursor.execute("select * from data where block='"+f+"'")
            data = data + mycursor.fetchall()

    return render_template("agent/index.html",res = data)

if __name__ == "__main__":
    app.run(debug=True)
