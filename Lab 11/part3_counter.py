count = 0

N = int(input("N: "))
B = int(input("B: "))

count += 6
jo = 0
io = 0
ko = 0
while jo in range(N):
    count += 3
    while io in range(N):
        count += 3
        while ko in range(N):
            count += 3
            ii = io
            for ii in range(io + B):
                count += 11
                ji = jo
                for ji in range(jo + B):
                    count += 9
                    ki = ko
                    for ki in range (ko + B):
                        count += 15
            ko += B
        io += B
    jo += B

print("COUNT =", count)
