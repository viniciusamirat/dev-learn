#buscar padrões e aplicar filtros em uma string

import re

texto = 'esse é meu email vinicius@gmail.com e o meu outro@yahoo.com.'

quant = len(re.findall('@', texto))

print(quant)

#extraindo a próxima palarvea após a o '@'
meu = re.findall(r'@(\w+)', texto)

print(meu)