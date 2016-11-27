def checkCommand(inputCommand):
    if (inputCommand[0:4] == CMDLIST[0]):
        return 0
    elif (inputCommand[0:5] == CMDLIST[1]):
        return 1
    elif (inputCommand[0:5] == CMDLIST[2]):
        return 2
    elif (inputCommand[0:4] == CMDLIST[3]):
        return 3
    else:
        return "0000"

CMDLIST = ["fldd", "fmuld", "faddd", "fstd"]
ZERO = "0" * 32

# while True:
#     userInput = input("ARM: ").lower()
#     print(userInput, checkCommand(userInput))
