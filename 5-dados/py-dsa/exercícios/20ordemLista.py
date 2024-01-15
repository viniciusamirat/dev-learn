import random

alunos = list()

alunos.append(str(input('Informe o primeiro aluno: ')))
alunos.append(str(input('Informe o segundo aluno: ')))
alunos.append(str(input('Informe o terceiro aluno: ')))
alunos.append(str(input('Informe o quarto aluno: ')))

random.shuffle(alunos)

print(alunos)