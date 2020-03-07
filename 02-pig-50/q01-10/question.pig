-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
--
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv' USING PigStorage('\t')
    AS (id:CHARARRAY,
        date:CHARARRAY,
        num:INT);
LETTERs = FOREACH u GENERATE FLATTEN(TOKENIZE(id)) AS LETTER;
grouped = GROUP LETTERs BY LETTER;
lcount = FOREACH grouped GENERATE group, COUNT(LETTERs);
STORE lcount INTO 'output' USING PigStorage('\t');



