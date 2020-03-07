-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra de la 
-- columna 2 y clave de al columna 3; esto es, por ejemplo, la cantidad de 
-- registros en tienen la letra `b` en la columna 2 y la clave `jjj` en la 
-- columna 3 es:
-- 
--   ((b,jjj), 216)
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
t1= FOREACH u GENERATE FLATTEN($1), FLATTEN($2);
t2= FOREACH t1 GENERATE $0, $1;
t3= GROUP t2 BY ($0, $1);
result= FOREACH t3 GENERATE $0, COUNT(t2);
STORE result INTO 'output' USING PigStorage('\t');