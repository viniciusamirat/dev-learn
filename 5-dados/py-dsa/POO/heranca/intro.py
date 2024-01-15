class Animal():#super classe ou classe mãe

    def __init__(self):
        print('animal criado')
    
    def imprimir(self):
        print('esse é um animal')

    def comer(self):
        print('animal comendo')

    def som(self):
        pass

class cachorro(Animal): #sub classe ou classe filha
    def __init__(self):
        Animal.__init__(self)
        print('cachorro criado')

    def som(self):
        print('auau')
    
