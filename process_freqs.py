count = 0
with open ("freqs.txt", "r") as myfile:
    for line in myfile:
        count = count + 1

print("count = " + str(count))
