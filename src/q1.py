def main():
    n = 1000
    res = 0
    for i in range(n):
        if i%3==0 and i%5!=0:
            res+=i
        elif i%5==0 and i%3!=0:
            res += i
        elif i%5==0 and i%3==0:
            res += i
    print(res)

if __name__ == '__main__':
    main()
