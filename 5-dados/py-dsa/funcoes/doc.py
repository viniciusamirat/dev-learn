help(print)

#criar a próoria doc
def contador(i, f, p):
    """
        contador recebe (1, f, p)
        i = início da contagem
        f = final da contagem
        p = passo
        return = sem retorno
    """
    c = i
    while c <= f:
        print(f'{c}', end='...')
        c+=p
    print('Fim!')

contador(0,100,10)

help(contador)