def extended_gcd(num1, num2):
    """
    Function to calculate the extended greatest common divisor of two numbers.
    """
    x, y, u, v = 0, 1, 1, 0
    while num1 != 0:
        quotient, remainder = num2 // num1, num2 % num1
        m, n = x - u * quotient, y - v * quotient
        num2, num1, x, y, u, v = num1, remainder, u, v, m, n
    return num2, x, y


def mod_inverse(num, mod):
    """
    Function to calculate the modular inverse of a number.
    """
    gcd, x, _ = extended_gcd(num, mod)
    return x % mod if gcd == 1 else None


def chinese_remainder_theorem(remainders, moduli):
    """
    Function to solve the Chinese remainder theorem.
    """
    if len(remainders) != len(moduli):
        raise ValueError("Lengths of lists remainders and moduli must be equal")

    product = 1
    for modulus in moduli:
        product *= modulus

    result = 0
    for remainder, modulus in zip(remainders, moduli):
        partial_product = product // modulus
        inverse = mod_inverse(partial_product, modulus)
        if inverse is None:
            raise ValueError("Modular inverse does not exist")
        result += remainder * partial_product * inverse

    return result % product


def main():
    with open("chall.txt", "r") as r:
        lines = r.readlines()

    moduli = []
    for i, l in enumerate(lines):
        n = int(l.strip()[5:])
        # print(f"n{i+1}: {n}")
        moduli.append(n)

    with open("chall2.txt", "r") as r:
        lines = r.readlines()

    remainders = []
    for i, l in enumerate(lines):
        r = int(l.strip()[5:])
        # print(f"r{i+1}: {r}")
        remainders.append(r)

    solution = chinese_remainder_theorem(remainders, moduli)
    flag = solution.to_bytes((solution.bit_length() + 7) // 8, "big").decode()
    print("GCTF23{" + flag + "}")


if __name__ == "__main__":
    main()
