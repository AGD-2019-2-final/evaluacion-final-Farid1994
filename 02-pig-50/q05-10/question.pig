-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
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
        strin:CHARARRAY);
u2= FOREACH u GENERATE FLATTEN($1);
u3= GROUP u2 by $0;
RESULT= FOREACH u3 GENERATE $0, COUNT(u2) as ddd;
STORE RESULT INTO 'output' USING PigStorage('\t');

