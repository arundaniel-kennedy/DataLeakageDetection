from flask import Flask,render_template,request,redirect,url_for,session
import requests
from bs4 import BeautifulSoup
import mysql.connector
import os
import tempfile
import subprocess

config = {
  'user': 'root',
  'password': 'root',
  'host': 'localhost',
  'database': 'movie',
  'raise_on_warnings': True,
}

def html(urls):
    ret=''
    for url in urls:
        resp=requests.get(url)

        if resp.status_code==200:
            soup=BeautifulSoup(resp.text,'html.parser')
            text = soup.find_all(text=True)
            output = ''
            blacklist = [
            	'[document]',
            	'header',
            	'html',
            	'meta',
            	'head',
            	'script',
                'style',
                'br',
            	# there may be more elements you don't want, such as "style", etc.
            ]
            output = [t.strip("\n") for t in text if t.parent.name not in blacklist ]

            if "ad@we.com" in output:
                ret += url+":true <br>" #render_template("index.html")
            else:
                ret += url+":false <br>"
    return ret

def ocr(path):
    temp = tempfile.NamedTemporaryFile(delete=False)

    process = subprocess.Popen(['tesseract', path, temp.name], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    process.communicate()

    with open(temp.name + '.txt', 'r') as handle:
        contents = handle.read()

    os.remove(temp.name + '.txt')
    os.remove(temp.name)

    return contents

app = Flask(__name__)

@app.route('/')
def index():
    return render_template("index.html")

@app.route('/scrap',methods=['POST'])
def scrap():
    urls = request.form['sites']
    urls = urls.strip().split();
    reti = ''
    reti += html(urls)
    return reti

if __name__ == "__main__":
    app.run(host='192.168.1.4', port=40974, debug=True)
