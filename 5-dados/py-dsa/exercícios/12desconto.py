preco = float(input("Quanto custa o produto: "))

newPreco = preco - (preco*(5/100))

print('esse produto custa {:.2f} com 5% de desconto'.format(newPreco))