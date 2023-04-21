# coding=utf-8
# resolved

def solve(line, argument):
    match argument:
        case 1:
            for j in line:
                print(chr(int(j, 16)), end='')
        case 2:
            for j in line:
                print(chr(int(j, 2)), end='')
        case 3:
            for j in line:
                print(chr(int(j, 8)), end='')
        case 4:
            for j in line:
                print(chr(int(j)), end='')
        case 5:
            for j in line:
                print(chr(int(j[2:], 16)), end='')
        case default:
            exit()

i = 1
with open("Семья.txt", 'rb') as file:
    for lines in file.readlines():
        line = str(lines)[2:-5].split(' ')
        solve(line, i)
        i += 1

