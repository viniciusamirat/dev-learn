import os

texto = 'teste de linha 1\n'
texto += 'mais uma\n'
texto += 'mais outra\n'

arq = open(os.path.join('../manip_arquivos/arquivos/cientista.txt'), 'w')

for palavra in texto.split():
    arq.write(palavra + ' ')

arq.close()

arq = open(os.path.join('../manip_arquivos/arquivos/cientista.txt'), 'r')

print(arq.read())