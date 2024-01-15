dias = int(input('por quantos dias o carro foi alugado? '))
km = float(input('quantos km rodados? '))

valorDia = dias * 60
valorKm = km * 0.15

print('o valor total a pagar é de {:.2f}'.format(valorDia + valorKm))