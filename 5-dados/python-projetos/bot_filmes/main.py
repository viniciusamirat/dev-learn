import telebot
import filmes


token = '5693019649:AAGgBIcobY1aiI5MD3LqMjtPuc9o-GaAZbc'

bot = telebot.TeleBot(token)


@bot.message_handler(commands=['Filmes_em_alta'])
def em_alta(mensagem):
    #bot.reply_to(mensagem, 'esses são os filmes em alta:')

    bot.send_message(mensagem.chat.id, f'Esses são os filmes em alta: \n\n{filmes.emAlta()}')


@bot.message_handler(commands=['Filmes_bem_avaliados'])
def bem_avaliados(mensagem):
    bot.send_message(mensagem.chat.id, f'Esses são os filmes bem avalidos: \n\n{filmes.bemAvaliados()}')





def verificar(mensagem):
    return True

@bot.message_handler(func=verificar)
def responder(mensagem):

    texto = """
/Filmes_em_alta Filmes mais relevantes do momento
/Filmes_bem_avaliados Filmes com melhores avaliações
    """

    bot.reply_to(mensagem, texto)

bot.polling()