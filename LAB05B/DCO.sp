*****************************************************************
* Advanced Digital IC Design                                    *
* Demo Cell Circuits                                            *
*****************************************************************

***********************************
* Parameters                      *
***********************************
.PARAM loading=0.01p

***********************************
* Operation Condition             *
***********************************
*** Process: Typical ***
.lib "hspice_model.122" L18U18V_SS
*.lib "hspice_model.122" L18U18V_TT
*.lib "hspice_model.122" L18U18V_FF


***********************************
* `include subckt             *
***********************************
.include 'subdco.cir'

*** Voltage: 1.62V ***
.PARAM supply=1.62v

*** Temperature: 125C ***
.TEMP 125

***********************************
* Transition Analysis             *
***********************************
.TRAN 1ps 200ns

***********************************
* HSPICE Options                  *
***********************************
.OPTION POST PROBE
.OPTION NOMOD BRIEF MEASDGT=7 
.OPTION CAPTAB NOTOP AUTOSTOP

***********************************
* Output Signals                  *
***********************************
.probe tran v(IN_D[*]) v(OUT)
.probe tran i(VDD)

***********************************
* Measurement Commands            *
***********************************
*** Output Rise-Time and Fall-Time ***
.MEAS TRAN TR0   TRIG V(OUT) val='supply*0.5' rise=3 TD=30n
+	        TARG V(OUT) val='supply*0.5' rise=4 TD=30n
.MEAS TRAN TR1   TRIG V(OUT) val='supply*0.5' rise=2 TD=60n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=60n
.MEAS TRAN TR2   TRIG V(OUT) val='supply*0.5' rise=2 TD=90n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=90n
.MEAS TRAN TR3   TRIG V(OUT) val='supply*0.5' rise=2 TD=120n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=120n
.MEAS TRAN TR4   TRIG V(OUT) val='supply*0.5' rise=2 TD=150n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=150n
.MEAS TRAN TR5   TRIG V(OUT) val='supply*0.5' rise=2 TD=180n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=180n
.MEAS TRAN TR6   TRIG V(OUT) val='supply*0.5' rise=2 TD=210n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=210n
.MEAS TRAN TR7   TRIG V(OUT) val='supply*0.5' rise=2 TD=240n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=240n
.MEAS TRAN TR8   TRIG V(OUT) val='supply*0.5' rise=2 TD=270n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=270n
.MEAS TRAN TR9   TRIG V(OUT) val='supply*0.5' rise=2 TD=300n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=300n
.MEAS TRAN TR10   TRIG V(OUT) val='supply*0.5' rise=2 TD=330n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=330n
.MEAS TRAN TR11   TRIG V(OUT) val='supply*0.5' rise=2 TD=360n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=360n
.MEAS TRAN TR12   TRIG V(OUT) val='supply*0.5' rise=2 TD=390n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=390n
.MEAS TRAN TR13   TRIG V(OUT) val='supply*0.5' rise=2 TD=420n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=420n
.MEAS TRAN TR14   TRIG V(OUT) val='supply*0.5' rise=2 TD=450n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=450n
.MEAS TRAN TR15   TRIG V(OUT) val='supply*0.5' rise=2 TD=480n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=480n
.MEAS TRAN TR16   TRIG V(OUT) val='supply*0.5' rise=2 TD=510n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=510n
.MEAS TRAN TR17   TRIG V(OUT) val='supply*0.5' rise=2 TD=540n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=540n
.MEAS TRAN TR18   TRIG V(OUT) val='supply*0.5' rise=2 TD=570n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=570n
.MEAS TRAN TR19   TRIG V(OUT) val='supply*0.5' rise=2 TD=600n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=600n
.MEAS TRAN TR20   TRIG V(OUT) val='supply*0.5' rise=2 TD=630n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=630n
.MEAS TRAN TR21   TRIG V(OUT) val='supply*0.5' rise=2 TD=660n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=660n
.MEAS TRAN TR22   TRIG V(OUT) val='supply*0.5' rise=2 TD=690n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=690n
.MEAS TRAN TR23   TRIG V(OUT) val='supply*0.5' rise=2 TD=720n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=720n
.MEAS TRAN TR24   TRIG V(OUT) val='supply*0.5' rise=2 TD=750n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=750n
.MEAS TRAN TR25   TRIG V(OUT) val='supply*0.5' rise=2 TD=780n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=780n
.MEAS TRAN TR26   TRIG V(OUT) val='supply*0.5' rise=2 TD=810n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=810n
.MEAS TRAN TR27   TRIG V(OUT) val='supply*0.5' rise=2 TD=840n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=840n
.MEAS TRAN TR28   TRIG V(OUT) val='supply*0.5' rise=2 TD=870n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=870n
.MEAS TRAN TR29   TRIG V(OUT) val='supply*0.5' rise=2 TD=900n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=900n
.MEAS TRAN TR30   TRIG V(OUT) val='supply*0.5' rise=2 TD=930n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=930n
.MEAS TRAN TR31   TRIG V(OUT) val='supply*0.5' rise=2 TD=960n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=960n
.MEAS TRAN TR32   TRIG V(OUT) val='supply*0.5' rise=2 TD=990n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=990n
.MEAS TRAN TR33   TRIG V(OUT) val='supply*0.5' rise=2 TD=1020n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1020n
.MEAS TRAN TR34   TRIG V(OUT) val='supply*0.5' rise=2 TD=1050n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1050n
.MEAS TRAN TR35   TRIG V(OUT) val='supply*0.5' rise=2 TD=1080n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1080n
.MEAS TRAN TR36   TRIG V(OUT) val='supply*0.5' rise=2 TD=1110n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1110n
.MEAS TRAN TR37   TRIG V(OUT) val='supply*0.5' rise=2 TD=1140n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1140n
.MEAS TRAN TR38   TRIG V(OUT) val='supply*0.5' rise=2 TD=1170n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1170n
.MEAS TRAN TR39   TRIG V(OUT) val='supply*0.5' rise=2 TD=1200n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1200n
.MEAS TRAN TR40   TRIG V(OUT) val='supply*0.5' rise=2 TD=1230n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1230n
.MEAS TRAN TR41   TRIG V(OUT) val='supply*0.5' rise=2 TD=1260n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1260n
.MEAS TRAN TR42   TRIG V(OUT) val='supply*0.5' rise=2 TD=1290n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1290n
.MEAS TRAN TR43   TRIG V(OUT) val='supply*0.5' rise=2 TD=1320n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1320n
.MEAS TRAN TR44   TRIG V(OUT) val='supply*0.5' rise=2 TD=1350n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1350n
.MEAS TRAN TR45   TRIG V(OUT) val='supply*0.5' rise=2 TD=1380n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1380n
.MEAS TRAN TR46   TRIG V(OUT) val='supply*0.5' rise=2 TD=1410n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1410n
.MEAS TRAN TR47   TRIG V(OUT) val='supply*0.5' rise=2 TD=1440n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1440n
.MEAS TRAN TR48   TRIG V(OUT) val='supply*0.5' rise=2 TD=1470n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1470n
.MEAS TRAN TR49   TRIG V(OUT) val='supply*0.5' rise=2 TD=1500n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1500n
.MEAS TRAN TR50   TRIG V(OUT) val='supply*0.5' rise=2 TD=1530n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1530n
.MEAS TRAN TR51   TRIG V(OUT) val='supply*0.5' rise=2 TD=1560n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1560n
.MEAS TRAN TR52   TRIG V(OUT) val='supply*0.5' rise=2 TD=1590n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1590n
.MEAS TRAN TR53   TRIG V(OUT) val='supply*0.5' rise=2 TD=1620n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1620n
.MEAS TRAN TR54   TRIG V(OUT) val='supply*0.5' rise=2 TD=1650n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1650n
.MEAS TRAN TR55   TRIG V(OUT) val='supply*0.5' rise=2 TD=1680n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1680n
.MEAS TRAN TR56   TRIG V(OUT) val='supply*0.5' rise=2 TD=1710n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1710n
.MEAS TRAN TR57   TRIG V(OUT) val='supply*0.5' rise=2 TD=1740n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1740n
.MEAS TRAN TR58   TRIG V(OUT) val='supply*0.5' rise=2 TD=1770n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1770n
.MEAS TRAN TR59   TRIG V(OUT) val='supply*0.5' rise=2 TD=1800n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1800n
.MEAS TRAN TR60   TRIG V(OUT) val='supply*0.5' rise=2 TD=1830n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1830n
.MEAS TRAN TR61   TRIG V(OUT) val='supply*0.5' rise=2 TD=1860n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1860n
.MEAS TRAN TR62   TRIG V(OUT) val='supply*0.5' rise=2 TD=1890n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1890n
.MEAS TRAN TR63   TRIG V(OUT) val='supply*0.5' rise=2 TD=1920n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1920n
.MEAS TRAN TR64   TRIG V(OUT) val='supply*0.5' rise=2 TD=1950n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1950n
.MEAS TRAN TR65   TRIG V(OUT) val='supply*0.5' rise=2 TD=1980n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=1980n
.MEAS TRAN TR66   TRIG V(OUT) val='supply*0.5' rise=2 TD=2010n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2010n
.MEAS TRAN TR67   TRIG V(OUT) val='supply*0.5' rise=2 TD=2040n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2040n
.MEAS TRAN TR68   TRIG V(OUT) val='supply*0.5' rise=2 TD=2070n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2070n
.MEAS TRAN TR69   TRIG V(OUT) val='supply*0.5' rise=2 TD=2100n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2100n
.MEAS TRAN TR70   TRIG V(OUT) val='supply*0.5' rise=2 TD=2130n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2130n
.MEAS TRAN TR71   TRIG V(OUT) val='supply*0.5' rise=2 TD=2160n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2160n
.MEAS TRAN TR72   TRIG V(OUT) val='supply*0.5' rise=2 TD=2190n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2190n
.MEAS TRAN TR73   TRIG V(OUT) val='supply*0.5' rise=2 TD=2220n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2220n
.MEAS TRAN TR74   TRIG V(OUT) val='supply*0.5' rise=2 TD=2250n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2250n
.MEAS TRAN TR75   TRIG V(OUT) val='supply*0.5' rise=2 TD=2280n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2280n
.MEAS TRAN TR76   TRIG V(OUT) val='supply*0.5' rise=2 TD=2310n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2310n
.MEAS TRAN TR77   TRIG V(OUT) val='supply*0.5' rise=2 TD=2340n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2340n
.MEAS TRAN TR78   TRIG V(OUT) val='supply*0.5' rise=2 TD=2370n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2370n
.MEAS TRAN TR79   TRIG V(OUT) val='supply*0.5' rise=2 TD=2400n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2400n
.MEAS TRAN TR80   TRIG V(OUT) val='supply*0.5' rise=2 TD=2430n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2430n
.MEAS TRAN TR81   TRIG V(OUT) val='supply*0.5' rise=2 TD=2460n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2460n
.MEAS TRAN TR82   TRIG V(OUT) val='supply*0.5' rise=2 TD=2490n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2490n
.MEAS TRAN TR83   TRIG V(OUT) val='supply*0.5' rise=2 TD=2520n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2520n
.MEAS TRAN TR84   TRIG V(OUT) val='supply*0.5' rise=2 TD=2550n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2550n
.MEAS TRAN TR85   TRIG V(OUT) val='supply*0.5' rise=2 TD=2580n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2580n
.MEAS TRAN TR86   TRIG V(OUT) val='supply*0.5' rise=2 TD=2610n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2610n
.MEAS TRAN TR87   TRIG V(OUT) val='supply*0.5' rise=2 TD=2640n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2640n
.MEAS TRAN TR88   TRIG V(OUT) val='supply*0.5' rise=2 TD=2670n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2670n
.MEAS TRAN TR89   TRIG V(OUT) val='supply*0.5' rise=2 TD=2700n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2700n
.MEAS TRAN TR90   TRIG V(OUT) val='supply*0.5' rise=2 TD=2730n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2730n
.MEAS TRAN TR91   TRIG V(OUT) val='supply*0.5' rise=2 TD=2760n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2760n
.MEAS TRAN TR92   TRIG V(OUT) val='supply*0.5' rise=2 TD=2790n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2790n
.MEAS TRAN TR93   TRIG V(OUT) val='supply*0.5' rise=2 TD=2820n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2820n
.MEAS TRAN TR94   TRIG V(OUT) val='supply*0.5' rise=2 TD=2850n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2850n
.MEAS TRAN TR95   TRIG V(OUT) val='supply*0.5' rise=2 TD=2880n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2880n
.MEAS TRAN TR96   TRIG V(OUT) val='supply*0.5' rise=2 TD=2910n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2910n
.MEAS TRAN TR97   TRIG V(OUT) val='supply*0.5' rise=2 TD=2940n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2940n
.MEAS TRAN TR98   TRIG V(OUT) val='supply*0.5' rise=2 TD=2970n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=2970n
.MEAS TRAN TR99   TRIG V(OUT) val='supply*0.5' rise=2 TD=3000n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3000n
.MEAS TRAN TR100   TRIG V(OUT) val='supply*0.5' rise=2 TD=3030n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3030n
.MEAS TRAN TR101   TRIG V(OUT) val='supply*0.5' rise=2 TD=3060n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3060n
.MEAS TRAN TR102   TRIG V(OUT) val='supply*0.5' rise=2 TD=3090n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3090n
.MEAS TRAN TR103   TRIG V(OUT) val='supply*0.5' rise=2 TD=3120n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3120n
.MEAS TRAN TR104   TRIG V(OUT) val='supply*0.5' rise=2 TD=3150n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3150n
.MEAS TRAN TR105   TRIG V(OUT) val='supply*0.5' rise=2 TD=3180n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3180n
.MEAS TRAN TR106   TRIG V(OUT) val='supply*0.5' rise=2 TD=3210n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3210n
.MEAS TRAN TR107   TRIG V(OUT) val='supply*0.5' rise=2 TD=3240n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3240n
.MEAS TRAN TR108   TRIG V(OUT) val='supply*0.5' rise=2 TD=3270n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3270n
.MEAS TRAN TR109   TRIG V(OUT) val='supply*0.5' rise=2 TD=3300n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3300n
.MEAS TRAN TR110   TRIG V(OUT) val='supply*0.5' rise=2 TD=3330n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3330n
.MEAS TRAN TR111   TRIG V(OUT) val='supply*0.5' rise=2 TD=3360n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3360n
.MEAS TRAN TR112   TRIG V(OUT) val='supply*0.5' rise=2 TD=3390n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3390n
.MEAS TRAN TR113   TRIG V(OUT) val='supply*0.5' rise=2 TD=3420n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3420n
.MEAS TRAN TR114   TRIG V(OUT) val='supply*0.5' rise=2 TD=3450n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3450n
.MEAS TRAN TR115   TRIG V(OUT) val='supply*0.5' rise=2 TD=3480n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3480n
.MEAS TRAN TR116   TRIG V(OUT) val='supply*0.5' rise=2 TD=3510n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3510n
.MEAS TRAN TR117   TRIG V(OUT) val='supply*0.5' rise=2 TD=3540n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3540n
.MEAS TRAN TR118   TRIG V(OUT) val='supply*0.5' rise=2 TD=3570n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3570n
.MEAS TRAN TR119   TRIG V(OUT) val='supply*0.5' rise=2 TD=3600n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3600n
.MEAS TRAN TR120   TRIG V(OUT) val='supply*0.5' rise=2 TD=3630n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3630n
.MEAS TRAN TR121   TRIG V(OUT) val='supply*0.5' rise=2 TD=3660n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3660n
.MEAS TRAN TR122   TRIG V(OUT) val='supply*0.5' rise=2 TD=3690n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3690n
.MEAS TRAN TR123   TRIG V(OUT) val='supply*0.5' rise=2 TD=3720n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3720n
.MEAS TRAN TR124   TRIG V(OUT) val='supply*0.5' rise=2 TD=3750n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3750n
.MEAS TRAN TR125   TRIG V(OUT) val='supply*0.5' rise=2 TD=3780n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3780n
.MEAS TRAN TR126   TRIG V(OUT) val='supply*0.5' rise=2 TD=3810n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3810n
.MEAS TRAN TR127   TRIG V(OUT) val='supply*0.5' rise=2 TD=3840n
+	        TARG V(OUT) val='supply*0.5' rise=3 TD=3840n

*** Average && Peak Power ***
.MEAS tran avg_power avg par('v(VDD)*i(VDD)') FROM=0ns TO=100ns
.MEAS tran max_power min par('v(VDD)*i(VDD)') FROM=0ns TO=100ns


***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS

***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
*vinput   IN   0  PULSE(0 supply 0 0.1n 0.1n 4.9n 10n) 
*** Digital Vector Input ***
.VEC "dco1_ss.vec"

***********************************
* TOP Circuit                     *
***********************************


* 8 inverter = 2^8 = at most 256 frequency *
XINV01 IN_D[0] OUT A TBUFIX3
XINV02 IN_D[1] OUT A TBUFIX3
XINV03 IN_D[2] OUT A TBUFIX3
XINV04 IN_D[3] OUT A TBUFIX3
XINV05 IN_D[4] OUT A TBUFIX3
XINV06 IN_D[5] OUT A TBUFIX3
XINV07 IN_D[6] OUT A TBUFIX3
XINV08 IN_D[7] OUT A TBUFIX3

XINV11 IN_D[0] A B TBUFIX3
XINV12 IN_D[1] A B TBUFIX3
XINV13 IN_D[2] A B TBUFIX3
XINV14 IN_D[3] A B TBUFIX3
XINV15 IN_D[4] A B TBUFIX3
XINV16 IN_D[5] A B TBUFIX3
XINV17 IN_D[6] A B TBUFIX3
XINV18 IN_D[7] A B TBUFIX3

XINV21 IN_D[0] B OUT TBUFIX3
XINV22 IN_D[1] B OUT TBUFIX3
XINV23 IN_D[2] B OUT TBUFIX3
XINV24 IN_D[3] B OUT TBUFIX3
XINV25 IN_D[4] B OUT TBUFIX3
XINV26 IN_D[5] B OUT TBUFIX3
XINV27 IN_D[6] B OUT TBUFIX3
XINV28 IN_D[7] B OUT TBUFIX3

***********************************
* .ALTER                          *
***********************************

*.ALTER
*.PARAM supply=1.8v
*.del lib "hspice_model.122" L18U18V_SS
*.lib "hspice_model.122" L18U18V_TT
*.TEMP 25
*.ALTER
*.PARAM supply=1.98v
*.del lib "hspice_model.122" L18U18V_TT
*.lib "hspice_model.122" L18U18V_FF
*.TEMP 0

*.end
