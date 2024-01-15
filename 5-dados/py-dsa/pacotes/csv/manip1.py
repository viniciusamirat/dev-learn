import csv

with open('../manip_arquivos/arquivos/arquivo5.csv', 'w') as arq:
    writer = csv.writer(arq)
    writer.writerow(('note1', 'nota2', 'nota3'))
    writer.writerow((3,8,5))
    writer.writerow((5,5,5))

with open('../manip_arquivos/arquivos/arquivo5.csv', 'r', encoding='utf8', newline='\r\n') as arq:
    conteudo = csv.reader(arq)
    for x in conteudo:
        print(x)

with open('../manip_arquivos/arquivos/arquivo5.csv', 'r', encoding='utf8', newline='\r\n') as arq:
    conteudo = csv.reader(arq)
    lista = [x for x in conteudo]
    print(lista)