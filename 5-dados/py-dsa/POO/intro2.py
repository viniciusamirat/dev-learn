class Livro():
    def __init__(self, titulo, isbn):
        self.titulo = titulo
        self.isbn = isbn

    def imprime(self):
        print(f'nome do livro: {self.titulo}\ncod do livro: {self.isbn}')

L1 = Livro('do mil ao milhão', 100)

L1.imprime()

#testa se o atributo 'titulo' do objeto existe
print(hasattr(L1, 'titulo'))

setattr(L1, 'isbn', 101)

print(getattr(L1, 'isbn'))

delattr(L1, 'isbn')

print(hasattr(L1, 'isbn'))

print(getattr(L1, 'isbn'))