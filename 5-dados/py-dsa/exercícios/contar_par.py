nuns = [1,2,3,4,5,6,7,8,9,10]
quant = 0

for num in nuns:
    if((num % 2) == 0):
        quant += 1

print('{} pares'.format(quant))