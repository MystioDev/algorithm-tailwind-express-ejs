def legMelegebbNap():
    napokHomerseklete = [0, 300, 20, 32, 57, 10, 11, 2, 10, 400]
    
    legmagasabb = 0
    
    for azNapiFok in range(len(napokHomerseklete)):
        if napokHomerseklete[azNapiFok] > napokHomerseklete[legmagasabb]:
            legmagasabb = azNapiFok
            
    return legmagasabb

print(f"A legmelegebb nap a(z) {legMelegebbNap()}. nap volt az évben.")

def sorbaRendezes():
    lista = [0, 300, 20, 32, 57, 10, 11, 2, 10, 400]
    
    for i in range(len(lista)-1):
        for j in range(i+1, len(lista)):
            if lista[i] > lista [j]:
                lista[i], lista[j] = lista[j], lista[i] # csere

def sorbaRendezes():
    lista = [0, 300, 20, 32, 57, 10, 11, 2, 10, 400]
    
    for i in range(len(lista)):
        for j in range(0, len(lista) - i -1):
            if lista[j] > lista[j+1]:
                lista[j], lista[j+1] = lista[j+1], lista[j] # csere
    

print(f"Rendezett lista:")
print(sorbaRendezes())