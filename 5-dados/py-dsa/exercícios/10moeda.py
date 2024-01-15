valor = float(input("Informe quantos reais voce tem: "))

moedas = {
    'dolar': 5.21,
    'euro': 5.68,
    'BTC': 119000
}

print(f'você possui {valor / moedas["dolar"]} dolares')
print(f'voce possui {valor / moedas["euro"]} euros')
print(f'voce possui {valor / moedas["BTC"]} BTC')