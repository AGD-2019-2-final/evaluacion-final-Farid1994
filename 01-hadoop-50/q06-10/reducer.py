import sys
import string

if __name__ == "__main__":
    purp=None
    am=0
    max1=0
    new=0
    newaux=0
    result={}
    temp = []
    for line in sys.stdin:
        line = line.strip()
        letter,value = line.split("\t")
        actual = result.get(letter)
        if not actual:
            actual = []
        actual.append(value)
        result[letter] = actual
    #print(result)
    for key in result:
        #print(result.get(key)[0])
        print(key+"\t"+ result.get(key)[len(result.get(key)) -1 ]+"\t"+result.get(key)[0])