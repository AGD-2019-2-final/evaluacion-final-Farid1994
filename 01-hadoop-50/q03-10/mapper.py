import sys
if __name__ == "__main__":

    ##
    ## 
    ## 
    ##
    for line in sys.stdin:
        line=line.strip()
        line2=line.split(",")
        print(line2[1]+ '\t'+line2[0])
