import json

teste = {
    'nome': 'vini',
    'idade': 19,
    'cidade':'jundiai'
}

for k,v in teste.items():
    print(f'{k}   {v}')


print(json.dumps(teste))

with open('teste.json', 'w') as arq:
    arq.write(json.dumps(teste))

with open('teste.json', 'r') as arq:
    text = arq.read()
    print(json.loads(text))