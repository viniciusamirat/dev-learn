numeros = (
    int(input('informe um número: ')),
    int(input('informe um número: ')),
    int(input('informe um número: ')),
    int(input('informe um número: '))
)

print(f'o valor {numeros[0]} apareceu {numeros.count(numeros[0])} vezes.')
print(f'o valor {3} apareceu na {numeros.index(3)+1}° posição')

pares = 0
for n in numeros:
    if ((n % 2) == 0):
        pares += 1

print(f'Foram digitados {pares} numeros pares!')