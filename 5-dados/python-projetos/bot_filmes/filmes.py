import requests
import json
from googletrans import Translator
translator = Translator()

key = 'cc0284c12652410534da6262e1fdcfe1'

def emAlta():
    result = ''

    request = requests.post(f'https://api.themoviedb.org/3/movie/popular?api_key={key}&language=pt-BR&page=1')
    request = json.loads(request.content)
    

    for x in request['results']:
        titulo = str(x['original_title'])
        avaliacao = str(x['vote_average'])
        #titulo = translator.translate(titulo, dest='pt')

        result += avaliacao.replace('.', '') + '%' + ' ' + titulo + '\n'
    
    return result

def bemAvaliados():
    result = ''

    request = requests.post(f'https://api.themoviedb.org/3/movie/top_rated?api_key={key}&language=en-US&page=1')
    request = json.loads(request.content)

    for x in request['results']:
        titulo = str(x['original_title'])
        avaliacao = str(x['vote_average'])

        result += avaliacao.replace('.', '') + '%' + ' ' + titulo + '\n'
    
    return result
