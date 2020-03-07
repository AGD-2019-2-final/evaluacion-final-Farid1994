-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv' USING PigStorage('\t')
    AS (id:CHARARRAY,
        date:CHARARRAY,
        num:INT);
u2 = ORDER u BY $2;

u1 = FOREACH u2 GENERATE $2;
U3 = LIMIT u1 5;

STORE U3 INTO 'output' USING PigStorage('\t');