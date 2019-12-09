*IMPORTANT
note: raw data usually cause problem when importing (no error messages), hence it's better to save them as new csv before importing;

*note: format of dates in original files could be ddmmyy or mmddyy, and can vary between insurers, change codes accordingly;

*BHSI commenced from 2016-17;

data MII20001;

	%let _EFIERR_=0;/*settheERRORdetectionmacrovariable*/
	infile "&drive\Cntrb_Ext_MII20001_2019.csv"
		delimiter = ',' MISSOVER DSD firstobs=2 ;

			informat MIIIdentifier2 $15.;
			informat MemberPolicyNumber $15.;
			informat ProviderNumber2 $15.;
			informat FirstCoverStartDate2 ddmmyy10.;
			informat LastFullCoverEndDate2 ddmmyy10.;
			informat TerminationDate2 ddmmyy10.;
			informat DateofBirth2 ddmmyy10.;
			informat ContributionYear2 $4.;

	input
					MIIIdentifier2 $
					MemberPolicyNumber $
					ProviderNumber2 $
					ROCSStatus2
					FirstCoverStartDate2
					LastFullCoverEndDate2
					TerminationDate2 
					Gender2 $
					DateofBirth2
					ContributionYear2 $
					MemberROCSAmount2
					MemberTotalPaid2
					MemberROCSAmendmentAmount2
					MemberAmendmentTotal2
					StandardPremiumsPaid2
					OptionalPremiumsPaid2
					MembershipFeePaid2
					AdministrationFeesPaid2
					DiscountsPaid2
					LoadingsPaid2
					TotalAccumulatedBalance2
					ROCSCreditBalance2
					TotalPremiumAmount2
					StandardCoverPremiumPayable2
					OptionalCoverPremiumPayable2
					MembershipFeePayable2
					AdministrationFeesPayable2
					PremiumDiscountPayable2
					PremiumLoadingPayable2
					UMPSPAmountPayable2
					TaxesPayable2
					MIPolicyExcess2 $
					ISASpecialtyCode2 $
					;
			format FirstCoverStartDate2 ddmmyy10.;
			format LastFullCoverEndDate2 ddmmyy10.;
			format TerminationDate2 ddmmyy10.;
			format DateofBirth2 ddmmyy10.;


	if _ERROR_ then call symput('_EFIERR_',1);/*setERRORdetectionmacrovariable*/
run;

data MII30003;

	%let _EFIERR_=0;/*settheERRORdetectionmacrovariable*/
	infile "&drive\Cntrb_Ext_MII30003_2019.csv"
		delimiter = ',' MISSOVER DSD firstobs=2 ;

			informat MIIIdentifier2 $15.;
			informat MemberPolicyNumber $15.;
			informat ProviderNumber2 $15.;
			informat FirstCoverStartDate2 ddmmyy10.;
			informat LastFullCoverEndDate2 ddmmyy10.;
			informat TerminationDate2 ddmmyy10.;
			informat DateofBirth2 ddmmyy10.;
			informat ContributionYear2 $4.;

	input
					MIIIdentifier2 $
					MemberPolicyNumber $
					ProviderNumber2 $
					ROCSStatus2
					FirstCoverStartDate2
					LastFullCoverEndDate2
					TerminationDate2 
					Gender2 $
					DateofBirth2
					ContributionYear2 $
					MemberROCSAmount2
					MemberTotalPaid2
					MemberROCSAmendmentAmount2
					MemberAmendmentTotal2
					StandardPremiumsPaid2
					OptionalPremiumsPaid2
					MembershipFeePaid2
					AdministrationFeesPaid2
					DiscountsPaid2
					LoadingsPaid2
					TotalAccumulatedBalance2
					ROCSCreditBalance2
					TotalPremiumAmount2
					StandardCoverPremiumPayable2
					OptionalCoverPremiumPayable2
					MembershipFeePayable2
					AdministrationFeesPayable2
					PremiumDiscountPayable2
					PremiumLoadingPayable2
					UMPSPAmountPayable2
					TaxesPayable2
					MIPolicyExcess2 $
					ISASpecialtyCode2 $
					;
			format FirstCoverStartDate2 ddmmyy10.;
			format LastFullCoverEndDate2 ddmmyy10.;
			format TerminationDate2 ddmmyy10.;
			format DateofBirth2 ddmmyy10.;


	if _ERROR_ then call symput('_EFIERR_',1);/*setERRORdetectionmacrovariable*/
run;

data MII31001;
	%let _EFIERR_=0;/*settheERRORdetectionmacrovariable*/
	infile "&drive\Cntrb_Ext_MII31001_2019.csv"


		delimiter = ',' MISSOVER DSD firstobs=2 ;

			informat MIIIdentifier2 $15.;
			informat MemberPolicyNumber $15.;
			informat ProviderNumber2 $15.;
			informat FirstCoverStartDate2 ddmmyy10.;
			informat LastFullCoverEndDate2 ddmmyy10.;
			informat TerminationDate2 ddmmyy10.;
			informat DateofBirth2 ddmmyy10.;
			informat ContributionYear2 $4.;

	input
					MIIIdentifier2 $
					MemberPolicyNumber $
					ProviderNumber2 $
					ROCSStatus2
					FirstCoverStartDate2
					LastFullCoverEndDate2
					TerminationDate2 
					Gender2 $
					DateofBirth2
					ContributionYear2 $
					MemberROCSAmount2
					MemberTotalPaid2
					MemberROCSAmendmentAmount2
					MemberAmendmentTotal2
					StandardPremiumsPaid2
					OptionalPremiumsPaid2
					MembershipFeePaid2
					AdministrationFeesPaid2
					DiscountsPaid2
					LoadingsPaid2
					TotalAccumulatedBalance2
					ROCSCreditBalance2
					TotalPremiumAmount2
					StandardCoverPremiumPayable2
					OptionalCoverPremiumPayable2
					MembershipFeePayable2
					AdministrationFeesPayable2
					PremiumDiscountPayable2
					PremiumLoadingPayable2
					UMPSPAmountPayable2
					TaxesPayable2
					MIPolicyExcess2 $
					ISASpecialtyCode2 $
					;
			format FirstCoverStartDate2 ddmmyy10.;
			format LastFullCoverEndDate2 ddmmyy10.;
			format TerminationDate2 ddmmyy10.;
			format DateofBirth2 ddmmyy10.;


	if _ERROR_ then call symput('_EFIERR_',1);/*setERRORdetectionmacrovariable*/
run;

data MII50001;
	%let _EFIERR_=0;/*settheERRORdetectionmacrovariable*/
	infile "&drive\Cntrb_Ext_MII50001_2019.csv"


		delimiter = ',' MISSOVER DSD firstobs=2 ;

			informat MIIIdentifier2 $15.;
			informat MemberPolicyNumber $15.;
			informat ProviderNumber2 $15.;
			informat FirstCoverStartDate2 ddmmyy10.;
			informat LastFullCoverEndDate2 ddmmyy10.;
			informat TerminationDate2 ddmmyy10.;
			informat DateofBirth2 ddmmyy10.;
			informat ContributionYear2 $4.;

	input
					MIIIdentifier2 $
					MemberPolicyNumber $
					ProviderNumber2 $
					ROCSStatus2
					FirstCoverStartDate2
					LastFullCoverEndDate2
					TerminationDate2 
					Gender2 $
					DateofBirth2
					ContributionYear2 $
					MemberROCSAmount2
					MemberTotalPaid2
					MemberROCSAmendmentAmount2
					MemberAmendmentTotal2
					StandardPremiumsPaid2
					OptionalPremiumsPaid2
					MembershipFeePaid2
					AdministrationFeesPaid2
					DiscountsPaid2
					LoadingsPaid2
					TotalAccumulatedBalance2
					ROCSCreditBalance2
					TotalPremiumAmount2
					StandardCoverPremiumPayable2
					OptionalCoverPremiumPayable2
					MembershipFeePayable2
					AdministrationFeesPayable2
					PremiumDiscountPayable2
					PremiumLoadingPayable2
					UMPSPAmountPayable2
					TaxesPayable2
					MIPolicyExcess2 $
					ISASpecialtyCode2 $
					;
			format FirstCoverStartDate2 ddmmyy10.;
			format LastFullCoverEndDate2 ddmmyy10.;
			format TerminationDate2 ddmmyy10.;
			format DateofBirth2 ddmmyy10.;


	if _ERROR_ then call symput('_EFIERR_',1);/*setERRORdetectionmacrovariable*/
run;

data MII60001;
	%let _EFIERR_=0;/*settheERRORdetectionmacrovariable*/
	infile "&drive\Cntrb_Ext_MII60001_2019.csv"


		delimiter = ',' MISSOVER DSD firstobs=2 ;

			informat MIIIdentifier2 $15.;
			informat MemberPolicyNumber $15.;
			informat ProviderNumber2 $15.;
			informat FirstCoverStartDate2 ddmmyy10.;
			informat LastFullCoverEndDate2 ddmmyy10.;
			informat TerminationDate2 ddmmyy10.;
			informat DateofBirth2 ddmmyy10.;
			informat ContributionYear2 $4.;

	input
					MIIIdentifier2 $
					MemberPolicyNumber $
					ProviderNumber2 $
					ROCSStatus2
					FirstCoverStartDate2
					LastFullCoverEndDate2
					TerminationDate2 
					Gender2 $
					DateofBirth2
					ContributionYear2 $
					MemberROCSAmount2
					MemberTotalPaid2
					MemberROCSAmendmentAmount2
					MemberAmendmentTotal2
					StandardPremiumsPaid2
					OptionalPremiumsPaid2
					MembershipFeePaid2
					AdministrationFeesPaid2
					DiscountsPaid2
					LoadingsPaid2
					TotalAccumulatedBalance2
					ROCSCreditBalance2
					TotalPremiumAmount2
					StandardCoverPremiumPayable2
					OptionalCoverPremiumPayable2
					MembershipFeePayable2
					AdministrationFeesPayable2
					PremiumDiscountPayable2
					PremiumLoadingPayable2
					UMPSPAmountPayable2
					TaxesPayable2
					MIPolicyExcess2 $
					ISASpecialtyCode2 $
					;
			format FirstCoverStartDate2 ddmmyy10.;
			format LastFullCoverEndDate2 ddmmyy10.;
			format TerminationDate2 ddmmyy10.;
			format DateofBirth2 ddmmyy10.;


	if _ERROR_ then call symput('_EFIERR_',1);/*setERRORdetectionmacrovariable*/
run;

data MII70001;
	%let _EFIERR_=0;/*settheERRORdetectionmacrovariable*/
	infile "&drive\Cntrb_Ext_MII70001_2019.csv"


		delimiter = ',' MISSOVER DSD firstobs=2 ;

			informat MIIIdentifier2 $15.;
			informat MemberPolicyNumber $15.;
			informat ProviderNumber2 $15.;
			informat FirstCoverStartDate2 ddmmyy10.;
			informat LastFullCoverEndDate2 ddmmyy10.;
			informat TerminationDate2 ddmmyy10.;
			informat DateofBirth2 ddmmyy10.;
			informat ContributionYear2 $4.;

	input
					MIIIdentifier2 $
					MemberPolicyNumber $
					ProviderNumber2 $
					ROCSStatus2
					FirstCoverStartDate2
					LastFullCoverEndDate2
					TerminationDate2 
					Gender2 $
					DateofBirth2
					ContributionYear2 $
					MemberROCSAmount2
					MemberTotalPaid2
					MemberROCSAmendmentAmount2
					MemberAmendmentTotal2
					StandardPremiumsPaid2
					OptionalPremiumsPaid2
					MembershipFeePaid2
					AdministrationFeesPaid2
					DiscountsPaid2
					LoadingsPaid2
					TotalAccumulatedBalance2
					ROCSCreditBalance2
					TotalPremiumAmount2
					StandardCoverPremiumPayable2
					OptionalCoverPremiumPayable2
					MembershipFeePayable2
					AdministrationFeesPayable2
					PremiumDiscountPayable2
					PremiumLoadingPayable2
					UMPSPAmountPayable2
					TaxesPayable2
					MIPolicyExcess2 $
					ISASpecialtyCode2 $
					;
			format FirstCoverStartDate2 ddmmyy10.;
			format LastFullCoverEndDate2 ddmmyy10.;
			format TerminationDate2 ddmmyy10.;
			format DateofBirth2 ddmmyy10.;


	if _ERROR_ then call symput('_EFIERR_',1);/*setERRORdetectionmacrovariable*/
run;

data MII80001;
	%let _EFIERR_=0;/*settheERRORdetectionmacrovariable*/
	infile "&drive\Cntrb_Ext_MII80001_2019.csv"


		delimiter = ',' MISSOVER DSD firstobs=2 ;

			informat MIIIdentifier2 $15.;
			informat MemberPolicyNumber $15.;
			informat ProviderNumber2 $15.;
			informat FirstCoverStartDate2 ddmmyy10.;
			informat LastFullCoverEndDate2 ddmmyy10.;
			informat TerminationDate2 ddmmyy10.;
			informat DateofBirth2 ddmmyy10.;
			informat ContributionYear2 $4.;

	input
					MIIIdentifier2 $
					MemberPolicyNumber $
					ProviderNumber2 $
					ROCSStatus2
					FirstCoverStartDate2
					LastFullCoverEndDate2
					TerminationDate2 
					Gender2 $
					DateofBirth2
					ContributionYear2 $
					MemberROCSAmount2
					MemberTotalPaid2
					MemberROCSAmendmentAmount2
					MemberAmendmentTotal2
					StandardPremiumsPaid2
					OptionalPremiumsPaid2
					MembershipFeePaid2
					AdministrationFeesPaid2
					DiscountsPaid2
					LoadingsPaid2
					TotalAccumulatedBalance2
					ROCSCreditBalance2
					TotalPremiumAmount2
					StandardCoverPremiumPayable2
					OptionalCoverPremiumPayable2
					MembershipFeePayable2
					AdministrationFeesPayable2
					PremiumDiscountPayable2
					PremiumLoadingPayable2
					UMPSPAmountPayable2
					TaxesPayable2
					MIPolicyExcess2 $
					ISASpecialtyCode2 $
					;
			format FirstCoverStartDate2 ddmmyy10.;
			format LastFullCoverEndDate2 ddmmyy10.;
			format TerminationDate2 ddmmyy10.;
			format DateofBirth2 ddmmyy10.;


	if _ERROR_ then call symput('_EFIERR_',1);/*setERRORdetectionmacrovariable*/
run;

data rocfiles.current_data; 
	set  
    MII20001
	MII30003
   	MII31001
	MII50001 
	MII60001
    MII70001
    MII80001;
	if MIIIdentifier2 = 'MII20001' or MIIIdentifier2 = 'MII30003' then MIIIdentifier2 = 'AVANT';
	else if MIIIdentifier2 = 'MII31001' then MIIIdentifier2 = 'MIPSi';
	else if MIIIdentifier2 = 'MII50001' then MIIIdentifier2 = 'MIGA';
	else if MIIIdentifier2 = 'MII60001' then MIIIdentifier2 = 'MDANI';
	else if MIIIdentifier2 = 'MII70001' then MIIIdentifier2 = 'GUILD';
	else if MIIIdentifier2 = 'MII80001' then MIIIdentifier2 = 'BHSI';
	*remove dummy dates;
	if DateofBirth2 = 2936434 then DateofBirth2 = .; 
    if FirstCoverStartDate2 = 2936434 then FirstCoverStartDate2=.;
	if LastFullCoverEndDate2 = 2936434 then LastFullCoverEndDate2=.;
	if TerminationDate2 = 2936434 then TerminationDate2=.;

    idcurrent = _N_; *unique identifier;

	ROCSsum=sum(MemberROCSAmount2,MemberROCSAmendmentAmount2);
	premplusfee=sum(MemberTotalPaid2,MembershipFeePaid2);

	if ContributionYear2="2019" then contributor_flag=1;
run;

*check for dup;
proc sort data=rocfiles.current_data dupout=test nodupkey;
  by MIIIdentifier2 MemberPolicyNumber;
run; *0 dup deleted;

data rocfiles.current_data_for_projection;
	set rocfiles.current_data;
	Age2=floor((intck('month',DateofBirth2,&currdate.) - (day(&currdate.) < day(DateofBirth2))) / 12);  
	if Age2 = 0 or Age2 < 19 or Age2>100 then Age2 = .; 
	if MemberROCSAmount2 = . then MemberROCSAmount2 = 0;
	if StandardPremiumsPaid2 = . then StandardPremiumsPaid2 = 0;
	if OptionalPremiumsPaid2 = . then OptionalPremiumsPaid2 = 0;
	if MembershipFeePaid2 = . then MembershipFeePaid2 = 0;
	if AdministrationFeesPaid2 = . then AdministrationFeesPaid2 = 0;
	if DiscountsPaid2 = . then DiscountsPaid2 = 0; 
	if LoadingsPaid2 = . then LoadingsPaid2 = 0;
	if MemberROCSAmendmentAmount2 = . then MemberROCSAmendmentAmount2 = 0;
	if MemberAmendmentTotal2 = . then MemberAmendmentTotal2 = 0;
run;

***********************************************
***Prepare data for ananlysis********************
***************************************************;
data missingage;
	set rocfiles.current_data_for_projection;
	if Age2 = .;
run;*95 obs;

****** randomise missing ages and genders;

* age distribution parameters;

proc means data=rocfiles.current_data_for_projection nway noprint;
	class Gender2;
	where Age2 gt 0;
    output out = agemeang mean=;
run;
proc means data=rocfiles.current_data_for_projection nway noprint;
	where Age2 gt 0;
    output out = agemeanm mean=;
run;
proc means data=rocfiles.current_data_for_projection nway noprint;
	class Gender2;
	where Age2 gt 0;
    output out = agesdg std=;
run;
proc means data=rocfiles.current_data_for_projection nway noprint;
	where Age2 gt 0;
    output out = agesdm std=;
run;
data agemeang (keep=Gender2 Age2 rename = (Age2 = Agemean));
	set agemeang;
	by Gender2;
run;
data agesdg (keep=Gender2 Age2 rename = (Age2 = Agesd));
	set agesdg;
	by Gender2;
run;
data agemeanm (keep=Gender2 Age2 rename = (Age2 = Agemean));
	set agemeanm;
	Gender2='';
run;
data agesdm (keep=Gender2 Age2 rename = (Age2 = Agesd));
	set agesdm;
	Gender2='';
run;
data ageparms (keep=Gender2 Agemean Agesd);
	merge agemeang agesdg agemeanm agesdm;
	by Gender2;
run;

*attach age probabilitieS;

proc sort data=rocfiles.current_data_for_projection;
	by Gender2;
run;
data rocfiles.current_data_for_projection;
	set rocfiles.current_data_for_projection;
	merge rocfiles.current_data_for_projection (in=a) ageparms;
	if a;
	by Gender2;
run;

*** randomly assign age where missing;

data rocfiles.current_data_for_projection;
	set rocfiles.current_data_for_projection;
	if Age2=. then Age2=round(rannor(0)*Agesd+Agemean);
run;

* gender distribution parameters;

data gendercalcs (keep=Age2 Gender2 Fprob);
	set rocfiles.current_data_for_projection;
	if Age2 ne .;
	if Gender2 ne '';
	Fprob=0;
	if Gender2 = 'M' then Fprob = 0;
	if Gender2 = 'F' then Fprob = 1;
run;
proc means data=gendercalcs nway noprint;
	where Age2 gt 0;
	class Age2;
    output out=genderparms mean=;
run;
proc means data=gendercalcs nway noprint;
	where Age2 gt 0;
    output out=genderparms0 mean=;
run;
data genderparms0 (keep=Age2 Fprob);
	set genderparms0;
	Age2=0;
run;
data genderparms (keep=Age2 Fprob);
	merge genderparms0 genderparms;
	by Age2;
run;
proc sort data=rocfiles.current_data_for_projection;
	by Age2;
run;
proc sort data = genderparms;
	by Age2;
run;
data rocfiles.current_data_for_projection; 
	merge rocfiles.current_data_for_projection (in=a) genderparms;
	if a;
	by Age2;
run;
