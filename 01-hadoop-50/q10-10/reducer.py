import sys
import string

if __name__ == "__main__":
    result={}
    temp2=[]
    temp = []
    for line in sys.stdin:
        line=line.strip()
        line=line.replace('[','')
        line=line.replace(']','')
        line=line.replace("'",'')
        line=line.replace(' ','')
        line=line.split(',')
        for i in line[1:]:
            adding=[i,line[0]]
            temp.append(adding)
    temp = sorted(temp, key = lambda x: ((x[0]),int(x[1])))
    for pair in temp:
        letter=pair[0]
        value=pair[1]
        actual = result.get(letter)
        if not actual:
            actual = []
        actual.append(value)
        result[letter] = actual    
    for key in result:
        print(key+"\t"+','.join(result.get(key)))
            
        
        
        
