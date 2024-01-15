try:
    'a' + 8
except TypeError:
    print('tipo incorreto')

try:
    with open('arquivo/teste.txt', 'w') as arq:
        arq.write('teste')

except IOError:
    print('caminho inválido')
else:
    print('arquivo gravado com sucesso')
finally:
    print('sempre será executado com erro ou não')


try:
    a = str(input('informe um número'))
except:
    print('tipo incorreto')
finally:
    print('o correto é uma palavra')