from datetime import date
anoAtual = date.today().year
ano = int(input('qual seu ano de nascimento? '))

idade = anoAtual - ano
anoAlistamento = ano + 18

if (idade == 18):
    print('voce deve se alistar imediatamente')
elif idade > 18:
    print(f'voce deveria ter se alistado há {anoAtual - anoAlistamento} anos')
    print(f'seu alistamento foi em {anoAlistamento}')
elif idade < 18:
    print(f'voce deverá se alistar no ano de {anoAlistamento}')
    print(f'seu alistamento será em {anoAlistamento}')
