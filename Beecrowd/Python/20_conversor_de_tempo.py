# Leia um valor inteiro, que é o tempo de duração em segundos de um determinado evento em uma fábrica, e informe-o
# expresso no formato horas:minutos:segundos.
#
# Entrada
# O arquivo de entrada contém um valor inteiro N.
#
# Saída
# Imprima o tempo lido no arquivo de entrada (segundos), convertido para horas:minutos:segundos, conforme exemplo
# fornecido.
def deconmpoe_segundos(conversor):
    global tempo_em_segundos
    contador = 0

    while tempo_em_segundos >= conversor:
        tempo_em_segundos -= conversor
        contador += 1

    return contador


tempo_em_segundos = int(input())

conversores = [3600, 60]

horas = deconmpoe_segundos(conversores[0])
minutos = deconmpoe_segundos(conversores[1])

print(f'{horas}:{minutos}:{tempo_em_segundos}')

