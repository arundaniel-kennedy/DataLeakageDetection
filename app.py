from flask import Flask,render_template,request,redirect,url_for,session
from flask_session import Session
import requests
from bs4 import BeautifulSoup
import mysql.connector
import os
import io
import tempfile
import subprocess
from search import *
import bcrypt
from faker import Faker
import random as rand
import matplotlib.pyplot as plt

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

def e_random(R):
    return rand.choice(R)

def e_optimal(R,r):
    arg = []
    for i in R:
        c = len(r[i])
        arg.append((1/c)-(1/(c+1)))
    k = arg.index(max(arg))
    return R[k]

def explicit(r,fak,b,B,n,choice):
    R = []
    F = []
    for i in  range(0,n):
        if b[i]>0:
            R.append(i)
        F.append([])

    while B > 0:
        if choice == 'e-random':
            i = e_random(R)
        else:
            i = e_optimal(R,r)
        f = rand.choice(fak[i])
        for q in fak:
            q.remove(f)
        r[i].append(f)
        F[i].append(f)
        b[i] = b[i]-1
        if(b[i]==0):
            R.remove(i)
        B = B - 1
    return F

def s_random(i,t,r,nt):
    while True:
        k = rand.randint(0,nt-1)
        if t[k] not in r[i]:
            return k

def s_overlap(i,t,r,a):
    k = [j for j, x in enumerate(a) if x == min(a)]
    while True:
        z = rand.choice(k)
        if t[z] not in r[i]:
            return z

def s_max(i,t,r,a,n,m):
    min_ov = 1
    K = [t.index(p) for p in t if p not in r[i]]
    for k in K:
        max_rel_ov = 0
        for j in range(0,n):
            if j!=i and t[k] in r[j]:
                abs_ov = len(list(set(r[i]) & set(r[j])))+1
                rel_ov = abs_ov/min(m[i],m[j])
                max_rel_ov = max(max_rel_ov,rel_ov)
        if max_rel_ov <= min_ov:
            min_ov = max_rel_ov
            ret_k = k
    return ret_k

def sample(nt,t,a,n,m,choice):
    r = []
    for i in range(0,n):
        r.append([])

    rem = 0
    for i in m:
        rem = rem+i

    while rem > 0:
        for i in range(0,n):
            if len(r[i]) < m[i]:
                if choice == 's-random':
                    k = s_random(i,t,r,nt)
                elif choice == 's-overlap':
                    k = s_overlap(i,t,r,a)
                else:
                    k = s_max(i,t,r,a,n,m)
                r[i].append(t[k])
                a[k] = a[k]+1
                rem = rem-1
    return r

@app.route('/')
def index():
    return render_template("index.html")

@app.route('/login',methods=['POST'])
def login():
    email = request.form['email']
    password = request.form['password']

    mycursor.execute("SELECT * FROM login where email='"+email+"' and password='"+password+"'")
    myresult = mycursor.fetchone()
    if(len(myresult)>0):
        if myresult[3]==1:
            return redirect(url_for("adminindex"))
        else:
            session['id'] = myresult[0]
            return redirect(url_for("agents"))
    else:
        return redirect(url_for("index"))

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
    # print(reti)

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
        ids = list(filter(None,ids))
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

    maxie = 0
    lagent = ''
    for val in pg:
        if maxie < max(pg[val]):
            maxie = max(pg[val])
            lagent = val

    plt.switch_backend('Agg')

    plots = []
    p = [i/10 for i in range(0,11,1)]
    i = 0
    for pl in pg:
        print(i,pg[pl])
        plt.plot(pg[pl],p,label = "i="+str(i))
        i = i+1

    plt.title("Guilty chart", fontdict=None, loc='center', pad=None)
    plt.xlabel('p')
    plt.ylabel('Pr{Gi}')
    plt.savefig('static/images/new.png')
    plt.close("all")
    plots.append('static/images/new.png')

    return render_template("admin/result.html",result=res,pg=round(maxie*100,2),lagent=lagent,pgg=pg,plots=plots)


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
    state = request.form['state']

    if state == 'Unblocked':
        mycursor.execute("update agent set status='Blocked' where id='"+id+"'")
        link.commit()
    else:
        mycursor.execute("update agent set status='Unblocked' where id='"+id+"'")
        link.commit()


    return redirect(url_for("agent"))

@app.route('/admin/addaccess')
def addaccess():
    mycursor.execute("select * from agent where status='Unblocked'")
    agents = mycursor.fetchall()

    return render_template("admin/addaccess.html",agents=agents)

@app.route('/admin/delaccess')
def delaccess():
    mycursor.execute("update agent set total_records=0")
    link.commit()

    mycursor.execute("update data set agent=''")
    link.commit()

    mycursor.execute("update fake set agent=''")
    link.commit()

    return redirect(url_for("agent"))


@app.route('/admin/defaccess',methods=['POST'])
def defaccess():
    id = list(set(request.form['id'].split(',')))
    id = list(filter(None, id))
    id.sort()
    n = len(id)
    allocation = request.form['allocation']
    algorithm = request.form['algorithm']

    data = []
    if allocation == 'explicit':
        B = int(request.form['tfo'])
        bi = request.form['tfea'].split(",")
        bi = list(filter(None, bi))
        b = [int(b) for b in bi]
        cond = request.form['condition'].split(",")

        r=[]
        zz=[]
        for i in range(0,n):
            r.append([])
            zz.append([])

        for i in range(0,n):
            mycursor.execute("select id from data where type='"+cond[i]+"'")
            rest = mycursor.fetchall()
            for ress in rest:
                 r[i].append(ress[0])
                 zz[i].append(ress[0])

        fak=[]
        for i in range(0,n):
            fak.append([])

        for i in range(0,n):
            mycursor.execute("select id from fake where type='"+cond[i]+"' and agent='' or agent is NULL")
            rest = mycursor.fetchall()
            for ress in rest:
                fak[i].append(ress[0])

        data = explicit(r, fak, b, B, n, algorithm)

        for i in range(0,n):
            p = len(data[i])+len(zz[i])
            mycursor.execute("update agent set total_records='"+str(p)+"' where id='"+id[i]+"'")
            link.commit()
            for j in zz[i]:
                mycursor.execute("select agent from data where id='"+str(j)+"'")
                age = mycursor.fetchone()
                if(age[0]!=None):
                    age = age[0]+id[i]+","
                else:
                    age = id[i]+","
                mycursor.execute("update data set `agent`='"+age+"' where id='"+str(j)+"'")
                link.commit()
            for j in data[i]:
                mycursor.execute("update fake set `agent`='"+str(id[i])+"' where id='"+str(j)+"'")
                link.commit()
    else:
        mi = request.form['toea'].split(",")
        mi = list(filter(None, mi))
        m = [int(m) for m in mi]

        limit = request.form['limit']

        t = []

        for i in range(0,n):
            mycursor.execute("select id from data where agent='' or agent is NULL limit "+limit)
            rest = mycursor.fetchall()
            for ress in rest:
                 t.append(ress[0])

        nt = len(t)

        a = []
        for i in range(0,nt):
            a.append(0)

        data = sample(nt,t,a,n,m,algorithm)

        for i in range(0,n):
            p = len(data[i])
            mycursor.execute("update agent set total_records='"+str(p)+"' where id='"+id[i]+"'")
            link.commit()
            for j in data[i]:
                mycursor.execute("select agent from data where id='"+str(j)+"'")
                age = mycursor.fetchone()
                if(age[0]!=None):
                    age = age[0]+id[i]+","
                else:
                    age = id[i]+","
                mycursor.execute("update data set `agent`='"+age+"' where id='"+str(j)+"'")
                link.commit()

    return redirect(url_for("agent"))

@app.route('/admin/fakedata')
def fakedata():
    mycursor.execute("select * from fake")
    myresult = mycursor.fetchall()

    total = len(myresult)

    mycursor.execute("select * from fake limit 15")
    myresult = mycursor.fetchall()

    return render_template("admin/fakedata.html",res = myresult,total = total)

@app.route('/admin/addfakedata',methods=['POST'])
def addfakedata():
    num = int(request.form["num"])

    for i in range(0,num):
        elem = fake.email()+":"+fake.password()
        type = rand.choice(['vip','premium'])
        mycursor.execute("INSERT INTO `fake` (`value`,`type`) VALUES ('"+elem+"','"+type+"')")
        link.commit()

    return redirect(url_for("fakedata"))

@app.route('/admin/data')
def data():
    mycursor.execute("select * from data")
    myresult = mycursor.fetchall()

    total = len(myresult)

    mycursor.execute("select * from data limit 15")
    myresult = mycursor.fetchall()

    return render_template("admin/data.html",res = myresult,total = total)

@app.route('/admin/adddata')
def adddata():
    return render_template("admin/adddata.html")

@app.route('/admin/savedata',methods=['POST'])
def savedata():
    values = request.form['values']

    values = values.replace("\r","").split("\n")

    for value in values:
        type = rand.choice(['vip','premium'])
        mycursor.execute("INSERT INTO `data` (`value`,`type`) VALUES ('"+value+"','"+type+"')")
        link.commit()

    return redirect(url_for("data"))

@app.route('/agent')
def agents():
    id = session['id']
    print(id)

    mycursor.execute("select * from data where agent is not NULL and agent!=''")
    myresult = mycursor.fetchall()

    final = []
    for result in myresult:
        da = result[3].split(",")
        da = list(filter(None,da))
        if str(id) in da:
            final.append(result)

    return render_template("agent/index.html",res = final)

if __name__ == "__main__":
    app.run(debug=True)
