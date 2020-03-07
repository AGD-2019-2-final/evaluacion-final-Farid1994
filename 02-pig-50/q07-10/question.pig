-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` genere una tabla que contenga la primera columna,
-- la cantidad de elementos en la columna 2 y la cantidad de elementos en la 
-- columna 3 separados por coma. La tabla debe estar ordenada por las 
-- columnas 1, 2 y 3.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
u = LOAD 'data.tsv' USING PigStorage('\t')
    AS (lett:CHARARRAY,
        longtext:BAG{t:(p:CHARARRAY)},
        strin:map[]);
m2= FOREACH u GENERATE $0, SIZE($1), SIZE($2);
result= ORDER m2 BY $0, $1, $2;
STORE result INTO 'output' USING PigStorage(',');