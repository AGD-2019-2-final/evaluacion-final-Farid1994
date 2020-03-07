-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
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
tcol= FOREACH u GENERATE FLATTEN($2);
resut1= FOREACH tcol GENERATE $0;
result2= GROUP resut1 by $0;
result= FOREACH result2 GENERATE $0, COUNT(resut1);
STORE result INTO 'output' USING PigStorage(',');