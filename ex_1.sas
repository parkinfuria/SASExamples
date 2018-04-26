proc freq data=sashelp.heart;
run;


 
data hearttmp;
set sashelp.heart;
if diastolic > 90 & systolic > 140 then BP="HBP";
else if diastolic < 70 & systolic < 100 then BP="LBP";
else BP="NBP"; 
run;

proc print data=hearttmp(obs=100);
run;
