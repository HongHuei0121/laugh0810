proc import datafile='C:\Users\88698\Desktop\data0726.xlsx'
out=d1 dbms=xlsx;run;

proc print data=d1;run;

PROC FACTOR DATA=d1 METHOD=Principal
 CORR EIGENVECTORs n=15 out=scores;
var var3-var116;
RUN;

proc print data=scores;run;


proc princomp  cov out=CC;
var var3-var116;
run;

proc export dbms = xlsx  data= d2
outfile = "data2.xls "
replace;
run;
