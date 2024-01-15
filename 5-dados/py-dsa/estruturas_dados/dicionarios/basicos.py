dados = dict()

dados = {
    'nome': 'pedro',
    'idade': 19
}

print(dados['nome'])

dados['sexo'] = "M"

print(dados)

del dados['idade']

print(dados)

print(dados.values())
print(dados.keys())
print(dados.items())