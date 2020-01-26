import requests
from bs4 import BeautifulSoup

def news():
    url='http://192.168.1.4:40973/test.html'
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
        	# there may be more elements you don't want, such as "style", etc.
        ]
        output = [t.strip("\n") for t in text if t.parent.name not in blacklist ]
        print(output)
    else:
        print("Error")

news()
