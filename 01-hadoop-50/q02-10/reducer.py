import sys
import string

if __name__ == "__main__":
    purp=None
    am=0
    max1=0
    new=0
    newaux=0
    
    
    
    for line in sys.stdin:
        new=new+1
        line = line.strip()
        purp1,am1 = line.split("\t")
        if new==1000:
            print(purp + '\t' + str(max1))
        elif not purp:
            purp=purp1
            am=am1
            max1=am1
        elif purp!= purp1:
            print(purp + '\t' + str(max1))
            max1=0
            purp=purp1
        elif purp == purp1:
            if int(max1)<int(am1):
                max1=am1