from urllib.request import urlopen
import json

response = urlopen('http://vimeo.com/api/v2/video/57733101.json').read().decode('utf8')
dados = json.loads(response)[0]

print(dados['title'])