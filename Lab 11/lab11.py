import random

while True:
    A = []
    B = []
    N = int(input("Enter an integer (1-128): "))

    if (N in range(1, 129)):
        # file IO
        f = open("matrix.s", "w")
        # generate random matrix
        for i in range(N**2):
            A.append(random.randint(-1000, 1000) / random.randrange(1, 500))
            B.append(random.randint(-1000, 1000) / random.randrange(1, 500))

        # print code
        f.write("matA:\n")
        for ai in A:
            f.write("        .double   " + str(ai) + "\n")

        f.write("matB:\n")
        for bi in B:
            f.write("        .double   " + str(bi) + "\n")

        f.write("matC:\n")
        for i in range(N**2):
            f.write("        .double   " + str(0) + "\n")

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
        f.close()
    else:
        print("Try some other N")