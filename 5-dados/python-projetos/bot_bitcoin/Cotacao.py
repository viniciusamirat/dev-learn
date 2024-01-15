import requests
import json


def cotacao(moeda = 'BTC'):
    request = requests.get(f'https://www.mercadobitcoin.net/api/{moeda}/ticker/')

    cot = json.loads(request.content)

    return formatar(float(cot['ticker']['last']))

def formatar(valor):
    valor_arredondado = round(valor, 2)

    valor_virgula = str(valor_arredondado).replace('.', ',')

    posicao_virgula = valor_virgula.find(',')

    if len(valor_virgula[posicao_virgula+1:]) < 2:
        valor_virgula += '0'
    
    valor_ponto = ''

    if posicao_virgula == 4:
        for x, y in enumerate(valor_virgula):

            if x == 1:
                valor_ponto += '.'
                valor_ponto += y
            else:
                valor_ponto += y
    elif posicao_virgula == 5:
        for x, y in enumerate(valor_virgula):

            if x == 2:
                valor_ponto += '.'
                valor_ponto += y
            else:
                valor_ponto += y
    elif posicao_virgula == 6:
        for x, y in enumerate(valor_virgula):

            if x == 3:
                valor_ponto += '.'
                valor_ponto += y
            else:
                valor_ponto += y
    else:
        valor_ponto = valor_virgula

    return valor_ponto



