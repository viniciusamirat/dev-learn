def teste(a, b):
    global n
    n += a

    print(f'em teste n = {n}')


n = 2
c = 4

print(f'global n = {n}')

teste(n, c)

print(f'depois da fun n = {n}')


