import bs4
from urllib.request import urlopen as uReq
from urllib.request import Request as Request
from bs4 import BeautifulSoup as soup

my_url = 'file:///D:/test.html'

# opening connections. 
req = Request(my_url, headers={ 'User-agent': 'Bot 0.1' })
uClient = uReq(my_url)

#reading and closing connection
page_html = uClient.read()
uClient.close()

#parsing 
page_soup = soup(page_html, "html.parser")


#grabs titles
container = page_soup.findAll("div", {"class":"thing"})

filename = "example.csv"
f= open (filename, "w")
headers = "title, url\n"
f.write(headers)

x = 0
#loop
for y in container:

	title_container = container[x].findAll("a", {"class":"title_link"}) 
	title = title_container[0].text

	url = title_container[0]['href']


	print("Title: " + title)
	print("Url: " + url)
	print(x)

	f.write(title.replace(",", "|") + "," + url + "\n")
	x += 1
f.close()