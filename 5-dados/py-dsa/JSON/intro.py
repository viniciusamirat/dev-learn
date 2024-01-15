import json

teste = '{"nome": "viniciu", "idade": 19}'

#transformar json para dicionario py
d1 = json.loads(teste)

print(d1)

d2 = {
    'nome': 'vinicius',
    'idade': 19,
    'conhecimentos': ['power bi', 'python', 'sql server']
}

#transformado dicionario em json
j1 = json.dumps(d2)

print(type(j1))