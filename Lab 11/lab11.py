import random

while True:
    A = []
    B = []
    N = int(input("Enter an integer (1-128), (-1) to quit: "))
    BS = int(input("Enter BLOCKSIZE (2-16): "))

    if (N == -1):
        break
    if (N in range(1, 129) and BS in range(2, 17) and BS <= N and N % BS == 0):
        # generate random matrix
        for i in range(N**2):
            A.append(random.randint(0, 1000) / random.uniform(0.1, 1000))
            B.append(random.randint(0, 1000) / random.uniform(0.1, 1000))

        # write N
        f = open("matrix_n.s", "w")
        f.write("        .equ matN, " + str(N) + "\n")
        f.write("        .equ blocksize, " + str(BS) + "\n")
        f.close()

        # write code
        f = open("matrix.s", "w")
        f.write("        .global   matA\n")
        f.write("        .global   matB\n")
        f.write("        .global   matC\n")
        f.write("        .org      0x01000000\n")
        f.write("matA:\n")
        for ai in A:
            f.write("        .double   " + str(ai) + "\n")

        f.write("matB:\n")
        for bi in B:
            f.write("        .double   " + str(bi) + "\n")

        f.write("matC:\n" + ("        .double   0\n") * N**2)
        f.close()

        # calculate product
        print("Matrix product:")
        for i in range(N):
            C = []
            for j in range(N):
                sum = 0
                for k in range(N):
                    sum += A[i * N + k] * B[k * N + j]
                C.append(sum)
            print(C)
    else:
        print("Try some other N or B")
