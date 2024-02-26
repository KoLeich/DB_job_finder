import sys
classe = sys.argv[1]
print(classe)
try:
    with open(f"{classe}_alt.txt") as f:
        lines_alt = f.readlines()

    with open(f"{classe}.txt") as f:
        lines = f.readlines()    

    for i in lines:    
        if not i in lines_alt:
            print(i[:-1])
except:
    with open(f"{classe}.txt") as f:
            lines = f.readlines()    

    for i in lines:    
        print(i[:-1])