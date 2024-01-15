#retorna valores de um objeto iterável com base em uma condicional

def par(x):
    if (x % 2) == 0:
        return True
    else:
        return False

lista = [1,2,3,4,5,6,7,8,9]

r = list(filter(par, lista))

print(r)