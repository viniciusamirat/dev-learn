class Veiculo():

    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo
    
    def acelerar(self):
        pass

    def frear(self):
        pass

class Carro(Veiculo):
    def acelerar(self):
        print('Carro acelerando')
    
    def frear(self):
        print('carro freando')

class Moto(Veiculo):
    def acelerar(self):
        print('moto acelerando')
    
    def frear(self):
        print('moto freando')

class Aviao(Veiculo):
    def acelerar(self):
        print('aviao acelerando')

    def frear(self):
        print('aviao freando')
    
    def decolar(self):
        print('aviao decolando')

veiculos = [Carro('BMW', '2300'), Moto('yamarra', 'fazzer'), Aviao('Tam', 'boing')]

for v in veiculos:
    v.acelerar()

    v.frear()

    if isinstance(v, Aviao):
        v.decolar()