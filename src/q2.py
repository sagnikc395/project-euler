
def main():
    n = 4_000_000
    a,b = 1, 2
    even_sum = 0

    while a <= n:
        if a%2 ==0:
            even_sum += a
        a,b = b,a+b

    print(even_sum)



if __name__ == '__main__':
    main()
