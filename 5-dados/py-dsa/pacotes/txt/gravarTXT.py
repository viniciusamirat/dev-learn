
arqtxt = open('arquivos/arquivo2.txt', 'w') #abre m modo de escrita 'write', se não existir ele cria, se exisitr ele sobrescreve

arqtxt.write('teste de escrita')

arqtxt.close()

arqtxt = open('arquivos/arquivo2.txt', 'r')

print(arqtxt.read())