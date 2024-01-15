maior = 0
menor = 1000000000000
num = 0
while num != -1:
    num = int(input('informe um número ou -1 para parar:\n'))

    if num > maior:
        maior = num
    
    if num < menor:
        menor = num
    
print(f'o maior número foi {maior}')
print(f'o menor número foi {menor}')