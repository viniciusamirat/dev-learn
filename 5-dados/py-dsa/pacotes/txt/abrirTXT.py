
arqtxt = open('arquivos/arquivo1.txt', 'r') #abre em modo de leitura 'read'
print(type(arqtxt))

print(arqtxt.read())

print(arqtxt.tell()) #retorna a quantidade de caracteres

print(arqtxt.seek(0,0)) # retorna o cursor para o início do arquivo

print(arqtxt.read(23))