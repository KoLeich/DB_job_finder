import sys

n = sys.argv[1]
print(f"hier kommt nummer {n}")
def word( stri, l ,r ):
    return stri[stri.find(l)+len(l):stri.find(r)  ]

with open(f"Seiten/Seite{n}.html") as f:
    lines = f.readlines()

for line in lines:
    link = word(line,"href=",'target="_blank"')
    print(link[1:-2])
    newlink = link[1:-2]
    newlink = f"https://db.jobs{newlink}"
    listoflinks = open("links_z.txt", "a")
    listoflinks.write(f"{newlink}\n")
