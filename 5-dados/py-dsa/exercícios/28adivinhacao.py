from random import randint
from time import sleep

print('-=-=-=-=-=-=-=-=-=-=-=-=-=-')
print('Adivinhação')
print('-=-=-=-=-=-=-=-=-=-=-=-=-=-')
num = int(input('em qual número eu pensei de 0 a 5?\n'))

num2 = randint(0, 5)

print('processando')
sleep(3)

if(num == num 2):
    print('parabens voce acertou')
else:
    print('voce errou')

