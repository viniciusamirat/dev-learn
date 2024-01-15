import telebot
from Cotacao import cotacao

token = '6097836083:AAFqpqUaW0YBwJvDNMVH-k3ywSBNFVh1Wy0'

bot = telebot.TeleBot(token)

moedas = []
moedas_siglas = []

moedas_dict = {
    'BTC': 'Bitcoin',
    'ETH': 'Ethereum', 
    'SOL': 'Solana', 
    'USDC': 'USD Coin', 
    'USDP': 'Pax Dollar', 
    'MATIC': 'Polygon', 
    'BCH': 'Bitcoin Cash', 
    'XRP': 'XRP', 
    'ADA': 'Cardano',	 
    'DAI': 'Dai', 
    'LTC': 'Litecoin', 
}

for x, y in moedas_dict.items():
    moedas_siglas.append(str(x))
    moedas.append(str(x) + ' ' + str(y))



@bot.message_handler(commands=moedas_siglas)
def cotar(mensagem):

    sigla_moeda = mensagem.text.replace('/', '')
    cot = cotacao(sigla_moeda)

    bot.send_message(mensagem.chat.id, f'A cotação do {moedas_dict[sigla_moeda]} é de R$ {cot}')

@bot.message_handler(commands=['Sobre'])
def sobre(mensagem):
    texto = """
Este é um Bot criado para consultar cotações de criptomoedas em tempo real, consumindo a API do mercadobitcoin.com.br
"""
    bot.send_message(mensagem.chat.id, texto)

def verificar(mensagem):
    return True

@bot.message_handler(func=verificar)
def menu(mensagem):

    texto = 'Clique na sigla da moeda desejada e a cotação será informada:\n\n'

    for m in moedas:
        texto += '/' + m + '\n'
    
    texto += '\n/Sobre Informções da aplicação'
    bot.send_message(mensagem.chat.id, texto)


bot.polling()