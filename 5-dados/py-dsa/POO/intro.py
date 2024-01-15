class Livro():


    def __init__(self):
        self.titulo = 'do mil ao milhão'
        self.isbn = 998888
        print('construtor sendo chamado para a criação do objeto')

    def imprime(self):
        print('foi criado o objeto do livro %s de cod %d' %(self.titulo, self.isbn))


l1 = Livro()

print(type(l1))

print(l1.imprime())

