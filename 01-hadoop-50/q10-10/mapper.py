import sys
if __name__ == "__main__":

    ##
    ## 
    ## 
    ##
    test=[]
    for line in sys.stdin:
        line=line.strip()
        line2=line.split(',')
        line2[0]=line2[0].split()
        flat_list = []
        for sublist in line2:
            for item in sublist:
                flat_list.append(item)
        
        print(flat_list)