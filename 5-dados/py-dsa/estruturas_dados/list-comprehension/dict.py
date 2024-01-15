alunos = {
    'julia': 10,
    'vinicius': 7,
    'juliano': 7,
    'ze': 4
}

aprov = {c: ('aprovado' if v >= 7 else 'reprovado') for (c, v) in alunos.items()}


print(aprov)