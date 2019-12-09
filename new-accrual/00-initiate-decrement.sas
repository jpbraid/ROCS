%let year=2019;
%let drive=\\olympus.treasury.gov\sas\models$\aga\Agencies\Health\ROCS\2019\ROCS contributions;
%let drive2=\\olympus.treasury.gov\sas\models$\aga\Agencies\Health\ROCS\2019\ROCS new accrual;
libname rocfiles "&drive2";
%let currdate='30jun2019'd;
%let prevdate='30jun2018'd;
%let risky=1700; *risky doctor threshold, check sensitivity, maybe increase by 50;
%let avgclaimfreq = 0.04;
%let endloop = 30;
%let wageinflation = 0.04;
%let superimposed = 0.025;
%let discountrate = 0.05;*long term discount rate has been changed to 5% from 6% as at 30 June 2018;
%let wind_down=0.8; *result is sensitive to this;


***run the following code if there's any change in decrement assumptions from the previous year,
else simply copy the sas files (decrementassumptions, probrocs) from previous year's folder;

* input decrements from 
	(i) Decrement assumptions .csv and
	(ii) Pr ROCS F.csv and Pr ROCS M.csv
	with (ii) generated from decrement assumptions calc.xls
	and TRANSPOSED and saved into Pr ROCS F.csv and Pr ROCS M.csv;
*if one is updated, the other also needs to be updated; 

/*

PROC IMPORT OUT= DECREMENTASSUMPTIONS 
            DATAFILE= "&drive2\Decrement assumptions.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
data rocfiles.decrementassumptions(drop=ALT ALT_multiple_Death ALT_multiple_TPD);
	set decrementassumptions;
	Ageplus3 = Age + 3;
	Death = ALT_Multiple_Death * ALT;
	TPD = ALT_Multiple_TPD * ALT;
	Death_and_TPD = Death + TPD;
run;
data rocfiles.decrementassumptions (rename = (Gender = Gender2 Age = Age2));
	set rocfiles.decrementassumptions;
run;

PROC IMPORT OUT= PROBROCSM 
            DATAFILE= "&drive2\Pr ROCS M.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=NO;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= PROBROCSF 
            DATAFILE= "&drive2\Pr ROCS F.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=NO;
     DATAROW=2; 
RUN;
data probrocsF;
	Gender2 = 'F';
	set probrocsF;
run;
data probrocsM;
	Gender2 = 'M';
	set probrocsM;
run;
data probrocsM (rename=(
		VAR1 = Age2
		VAR2 = Probrocsduration1
		VAR3 = Probrocsduration2
		VAR4 = Probrocsduration3
		VAR5 = Probrocsduration4
		VAR6 = Probrocsduration5
		VAR7 = Probrocsduration6
		VAR8 = Probrocsduration7
		VAR9 = Probrocsduration8
		VAR10 = Probrocsduration9
		VAR11 = Probrocsduration10
		VAR12 = Probrocsduration11
		VAR13 = Probrocsduration12
		VAR14 = Probrocsduration13
		VAR15 = Probrocsduration14
		VAR16 = Probrocsduration15
		VAR17 = Probrocsduration16
		VAR18 = Probrocsduration17
		VAR19 = Probrocsduration18
		VAR20 = Probrocsduration19
		VAR21 = Probrocsduration20
		VAR22 = Probrocsduration21
		VAR23 = Probrocsduration22
		VAR24 = Probrocsduration23
		VAR25 = Probrocsduration24
		VAR26 = Probrocsduration25
		VAR27 = Probrocsduration26
		VAR28 = Probrocsduration27
		VAR29 = Probrocsduration28
		VAR30 = Probrocsduration29
		VAR31 = Probrocsduration30
		));
	set probrocsM;
run;
data probrocsF (rename=(
		VAR1 = Age2
		VAR2 = Probrocsduration1
		VAR3 = Probrocsduration2
		VAR4 = Probrocsduration3
		VAR5 = Probrocsduration4
		VAR6 = Probrocsduration5
		VAR7 = Probrocsduration6
		VAR8 = Probrocsduration7
		VAR9 = Probrocsduration8
		VAR10 = Probrocsduration9
		VAR11 = Probrocsduration10
		VAR12 = Probrocsduration11
		VAR13 = Probrocsduration12
		VAR14 = Probrocsduration13
		VAR15 = Probrocsduration14
		VAR16 = Probrocsduration15
		VAR17 = Probrocsduration16
		VAR18 = Probrocsduration17
		VAR19 = Probrocsduration18
		VAR20 = Probrocsduration19
		VAR21 = Probrocsduration20
		VAR22 = Probrocsduration21
		VAR23 = Probrocsduration22
		VAR24 = Probrocsduration23
		VAR25 = Probrocsduration24
		VAR26 = Probrocsduration25
		VAR27 = Probrocsduration26
		VAR28 = Probrocsduration27
		VAR29 = Probrocsduration28
		VAR30 = Probrocsduration29
		VAR31 = Probrocsduration30
		));
	set probrocsF;
run;
data rocfiles.probrocs;
	set probrocsF probrocsM;
run;
