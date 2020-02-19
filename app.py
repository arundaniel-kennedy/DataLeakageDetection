from flask import Flask,render_template,request,redirect,url_for,session
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
            return render_template("admin/index.html")
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

@app.route('/admin/scrap',methods=['POST'])
def scrap():
    urls = request.form['sites']
    urls = urls.strip().split()
    data = request.form['data']
    reti = html(urls,data)
    return render_template("admin/result.html",result=reti)


if __name__ == "__main__":
    app.run(debug=True)
