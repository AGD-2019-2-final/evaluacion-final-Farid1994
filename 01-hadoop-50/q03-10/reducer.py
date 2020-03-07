import sys
import string

if __name__ == "__main__":
    for line in sys.stdin:
        line=line.strip()
        line2=line.split("\t")
        print(line2[1]+ ','+line2[0])