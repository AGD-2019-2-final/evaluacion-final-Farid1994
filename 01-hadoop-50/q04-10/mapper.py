import sys
import sys
if __name__ == "__main__":
    for line in sys.stdin:
        line2=line.split()
        sys.stdout.write("{}\t1\n".format(line2[0]))
