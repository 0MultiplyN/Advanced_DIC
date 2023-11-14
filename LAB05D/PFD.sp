*******************************************************
* Advanced Digital IC Design                          *
*                                                     *
* Exercise: Phase/Frequency Detector                  *
*******************************************************

***********************************
* Operation Condition             *
***********************************
*** Process: Typical ***
.lib "ultrasim_model.122" L18U18V_SS

*.lib "ultrasim_model.122" L18U18V_FF
*.lib "ultrasim_model.122" L18U18V_TT

*** Voltage: 1.8V ***
.PARAM supply=1.62v

*** Temperature: 25C ***
.TEMP 125

***********************************
* Transition Analysis             *
***********************************
.TRAN 1ps 400ns

***********************************
* UltraSIM Simulation Options     *
***********************************
*ultrasim: .usim_opt  sim_mode=ms
*ultrasim: .usim_opt  postl=2 analog=0 speed=5

***********************************
* UltraSIM Output Options         *
***********************************
*ultrasim: .usim_opt  wf_format=fsdb 
*ultrasim: .usim_opt  wf_tres=1p
*ultrasim: .usim_opt  vh=0.9
*ultrasim: .usim_opt  vl=0.9

*ultrasim: .lprobe v(IN) v(FB) v(QD0) v(QU0) v(CDN) v(OUTTU) v(OUTU) v(OUTD) v(OUTBU) v(OUTBD) v(flagU) v(flagD) preserve=port

***********************************
* Output Analog Signals           *
***********************************



***********************************
* Measurement Commands            *
***********************************

*** Average && Peak Power ***
.MEAS tran avg_power avg par('v(VDD)*i(VDD)')
.MEAS tran max_power min par('v(VDD)*i(VDD)')

***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS

***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
*vin      IN   0  PULSE(0 supply 0    0.1n 0.1n 49.9n 100n)
*vfb      FB   0  PULSE(0 supply 0.2n 0.1n 0.1n 49.9n 100n)
*** Digital Vector Input ***
.VEC "pfd_ss.vec"

***********************************
* TOP Circuit                     *
***********************************


X0DF IN VDD CDN QNU0 QU0 DFFRX4
X1DF FB VDD CDN QNU1 QD0 DFFRX4

X0NAND QU0 QD0 UD0 NAND2X1
X0AND UD0 RESET_B CDN AND2X1

X0NV QU0 QUI0 INVX1 
X1NV QD0 QDI0 INVX1 

X1NAND QU0 QDI0 OUTU NAND2X1
X2NAND QU0 QDI0 OUTU NAND2X1
X3NAND QU0 QDI0 OUTU NAND2X1
X4NAND QU0 QDI0 OUTU NAND2X1



X14NAND QD0 QUI0 OUTD NAND2X1
X15NAND QD0 QUI0 OUTD NAND2X1
X16NAND QD0 QUI0 OUTD NAND2X1
X17NAND QD0 QUI0 OUTD NAND2X1



* digital pulse amplifier   *

X0BUF OUTU OUTTU BUFX4
X1AND OUTU OUTTU OUTU1 AND2X1
X2AND OUTTU OUTU1 OUTU2 AND2X1
X3AND OUTU1 OUTU2 OUTU3 AND2X1
X4AND OUTU2 OUTU3 OUTU4 AND2X1
X5AND OUTU3 OUTU4 OUTU5 AND2X1
X6AND OUTU4 OUTU5 OUTU6 AND2X1
X7AND OUTU5 OUTU6 OUTU7 AND2X1
X8AND OUTU6 OUTU7 OUTU8 AND2X1
X9AND OUTU7 OUTU8 OUTU9 AND2X1
X10AND OUTU8 OUTU9 OUTU10 AND2X1
X11AND OUTU9 OUTU10 OUTU11 AND2X1
X12AND OUTU10 OUTU11 OUTBU AND2X1

X1BUF OUTD OUTTD BUFX4
XX1AND OUTD OUTTD OUTD1 AND2X1
XX2AND OUTTD OUTD1 OUTD2 AND2X1
XX3AND OUTD1 OUTD2 OUTD3 AND2X1
XX4AND OUTD2 OUTD3 OUTD4 AND2X1
XX5AND OUTD3 OUTD4 OUTD5 AND2X1
XX6AND OUTD4 OUTD5 OUTD6 AND2X1
XX7AND OUTD5 OUTD6 OUTD7 AND2X1
XX8AND OUTD6 OUTD7 OUTD8 AND2X1
XX9AND OUTD7 OUTD8 OUTD9 AND2X1
XX10AND OUTD8 OUTD9 OUTD10 AND2X1
XX11AND OUTD9 OUTD10 OUTD11 AND2X1
XX12AND OUTD10 OUTD11 OUTBD AND2X1

X2DF IN VDD OUTBU flagnU flagU DFFRX4
X3DF FB VDD OUTBD flagnD flagD DFFRX4

***********************************
* SUB Circuit                     *
***********************************

.INCLUDE "ultrasim_cells.sp"

.END