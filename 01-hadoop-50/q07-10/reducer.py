import sys
import string

if __name__ == "__main__":

    
    temp = []
    for line in sys.stdin:
        line = line.strip()
        
        line2 = line.split()
        temp.append(line2)
    temp = sorted(temp, key = lambda x: (x[0], int(x[2])))
    
    for item in temp:
        print(item[0]+"\t"+item[1]+"\t"+item[2])

