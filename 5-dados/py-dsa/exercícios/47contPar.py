

ini = int(input('inform um número inicial: '))

fim = int(input('informe um número final: '))

nuns = list()

for c in range(ini, fim+1, 1):
    if (c %2) == 0:
        nuns.append(c)

print('os número pares desta faixa são:')

for n in nuns:
    print(n, end=' ')

