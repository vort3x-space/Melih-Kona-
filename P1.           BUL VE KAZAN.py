import random as r

rastgelesayi = r.randint(1,75)

print("======================BUL VE KAZAN======================")

print("Sayıyı 75 ile 0 arasından Seçin")

while True:
    print("======================")
    tahmin = int(input("Sayıyı Tahmin Et:"))

    if tahmin == rastgelesayi:
        print("*****************")
        for i in range(10):
            print("!!Doğru Tahmin!!")
        print("*****************")
        break

    elif tahmin < rastgelesayi:
        print("======================")
        print("Daha BÜYÜK")

    elif tahmin > rastgelesayi:
        print("======================")
        print("Daha küçük")
