def main():
    def largest_prime_factor(n):
        factor = 2
        largest = 0

        while n %factor ==0:
            largest = factor
            n //= factor

        factor = 3
        while factor * factor <=n:
            while n % factor == 0:
                largest = factor
                n //= factor
            factor += 2

        if n > 1:
            largest = n
        return largest

    n = 600851475143
    print(largest_prime_factor(n))

main()
