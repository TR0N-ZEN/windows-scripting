inputfile = open("text.txt", r)
for lines in inputfile:
    if "connected" in lines:
        print(lines)