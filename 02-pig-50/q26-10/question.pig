fs -rm -f -r output;
u = LOAD 'data.csv' USING PigStorage(',') 
    AS (id:int, 
        firstname:CHARARRAY, 
        surname:CHARARRAY, 
        birthday:CHARARRAY, 
        color:CHARARRAY, 
        quantity:INT);
t1= FOREACH u GENERATE $1;
result= filter t1 by SUBSTRING($0,0,1)>='M';
STORE result INTO 'output' USING PigStorage();