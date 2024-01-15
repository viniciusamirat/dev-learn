#reduzir uma lista de elementos em um só valor

from functools import reduce

def soma(a,b):
    return a +b

lista = [1,2,3,4,5]

r = reduce(soma, lista)

print(r)

print(reduce(lambda x,y: x+y, lista))

#maior valor
print(reduce(lambda x,y: x if (x > y) else y, lista))