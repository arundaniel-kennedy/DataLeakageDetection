import requests
from bs4 import BeautifulSoup
import mysql.connector
import os
import tempfile
import subprocess
from io import BytesIO
try:
    from PIL import Image
except ImportError:
    import Image
import pytesseract

def html(urls,data):
    ret=[]
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
            output = [t.replace("\n","").strip(" ") for t in text if t.parent.name not in blacklist ]

            images = soup.findAll('img')
            for image in images:
                filename = url[:url.rfind("/")+1]
                tex = ocr(filename+image['src']).strip(" ").replace("\n"," ").split()
                for t in tex:
                 output.append(t)

            while("" in output) :
                output.remove("")

            if data in output:
                ret.append(url+":true") #render_template("index.html")
            else:
                ret.append(url+":false")
    return ret

def ocr(url):
    response = requests.get(url)
    img = Image.open(BytesIO(response.content))
    return pytesseract.image_to_string(img)


if __name__=="__main__":
    urls=['http://45.251.34.238:40973/test.html']
    print(html(urls))
