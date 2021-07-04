from random import choice, choices #the single import that moves the application


#variaveis importantes
lista_de_fichas = []
fichas_brancas = int(input("Numero de fichas brancas: "))
fichas_vermelhas = int(input("Numero de fichas vermelhas: "))
fichas_azuis =  int(input("Numero de fichas azuis: "))  

def mapeia_numeros():
    i = 0
    while i< fichas_brancas:
        lista_de_fichas.append("branca")
        i += 1
    
    j = 0 
    while j < fichas_vermelhas:
        lista_de_fichas.append("vermelha")
        j += 1

    k = 0
    while k < fichas_azuis:
        lista_de_fichas.append("azul")
        k += 1 

mapeia_numeros()


for ficha in lista_de_fichas:
    print(ficha)
        



def retira_ficha(lista, numero_de_pecas):
    i = 0
    result = []
    while i < numero_de_pecas:
        peca = choice(lista)
        result.append(peca)
        lista.pop(lista.index(peca))
        i += 1
    return result

def escolhe_ficha(numero): 
    for r in retira_ficha(lista_de_fichas, numero):
        print(r)




#corpo principal

while len(lista_de_fichas) != 0:
    numero = int(input("Escolha o número de fichas retiradas: "))
    if numero > len(lista_de_fichas):
        print("Acabaram as fichas")
    else:
        escolhe_ficha(numero)

    