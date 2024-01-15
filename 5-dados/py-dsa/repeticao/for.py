for c in range(0, 10, 1):
    print('ola {}'.format(C))

print('-------------------')

for x in range(10, 0, -1):
    print('ola {}'.format(x))

#====================================

nuns = [1,2,3,4,5,6,7,8,9,10]
quant = 0

for num in nuns:
    if((num % 2) == 0):
        quant += 1

print('{} pares'.format(quant))
#========================================

nuns2 = [1,2,3,4,5,6,7,8,9,10]
quant2 = 0
c = 0

while c < len(nuns2):
    if((nuns2[c] % 2)== 0):
        quant2 += 1
    c += 1

print('pares {}'.format(quant2))
