arqtxt = open('arquivos/arquivo2.txt', 'a') #a de append

arqtxt.write('acescentando um texto')

arqtxt.close()

arqtxt = open('arquivos/arquivo2.txt', 'r')

print(arqtxt.read())