


with open(f"links_z.txt") as f:
    lines_z = f.readlines()

with open(f"links_alt.txt") as f:
    lines_a = f.readlines()    


for z in lines_z:
    if not z in lines_a and "http" in z:
        listoflinks = open("links.txt", "a")
        listoflinks.write(f"{z}")
