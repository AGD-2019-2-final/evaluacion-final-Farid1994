import sys
if __name__ == "__main__":

    ##
    ## 
    ## 
    ##
    for line in sys.stdin:
        line2=line.split(",")
        print(line2[3]+ '\t'+line2[4])
        