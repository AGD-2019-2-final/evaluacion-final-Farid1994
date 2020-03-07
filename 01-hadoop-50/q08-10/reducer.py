import sys
import string

if __name__ == "__main__":

    result={}
    temp = []
    for line in sys.stdin:
        line = line.strip()
        letter,year,value = line.split("\t")
        actual = result.get(letter)
        if not actual:
            actual = []
        actual.append(int(value))
        result[letter] = actual
    for key in result:
        print(key+"\t"+str(format(sum(result[key]),'.1f'))+"\t"+str(sum(result[key])/len(result[key])))
        


        
        
        
