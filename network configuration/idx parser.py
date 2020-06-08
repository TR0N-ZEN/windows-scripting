import os

inputfile = open("text.txt")
lines = inputfile.readlines()
cache = []
for x in lines:
    if " connected" in x:
        print(x[1:3])
        cache.append(x[1:3])
outputfile = open("idx.txt", "w")
for i in cache:
        outputfile.write(i + "\n")