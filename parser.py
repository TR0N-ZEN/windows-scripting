inputfile = open("text.txt")
lines = inputfile.readlines()
print(lines)
for x in lines:
    if " connected" in x:
        print(x[1:3])
        outputfile = open("idx.txt", "w")
        outputfile.write(x[1:3])
