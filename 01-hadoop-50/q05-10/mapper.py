import sys
import sys
if __name__ == "__main__":

    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin:
        

        ##
        ## genera las tuplas palabra \tabulador 1
        ## ya que es un conteo de palabras
        ##
        line2=line.split()
        date=line2[1].split("-")        
        sys.stdout.write("{}\t1\n".format(date[1]))
