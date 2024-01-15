listaDoMmercado = ['ovo', 'farinha', 'maça']
print(listaDoMmercado)

numAlpha = [1, 2, 'teste']
print(numAlpha)

listaDoMmercado[0] = 'ovo2'
print(listaDoMmercado)

#matriz
matris = [['n1', 'n2'], ['n1', 'n2', 'n3'], ['n1', 'n2', 'n3', 'n4']]
print(matris)

#concatenando listas
concatenando = listaDoMmercado + numAlpha
print(concatenando)
print('ovo2' in concatenando)

#adicionando um novo valor
listaDoMmercado.append('uva') #no final
print(listaDoMmercado)
listaDoMmercado.insert(0, 'biscoito') #em uma posição
print(listaDoMmercado)

#deletar elementos
del listaDoMmercado[0]
print(listaDoMmercado)
listaDoMmercado.remove('uva')
print(listaDoMmercado)
listaDoMmercado.pop()#remove o ultimo   

#lista com range
valores = list(range(4,11))
print(valores)

valores.sort() #ordena crescente
valores.sort(reverse=true)#inverte

#tamanho
len(valores)

