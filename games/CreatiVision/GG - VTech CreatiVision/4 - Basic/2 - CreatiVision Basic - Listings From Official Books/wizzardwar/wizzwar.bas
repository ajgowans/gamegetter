1    GOTO 8000
2    REM*PLOT FACES*
3    S=S-5
4    R=0+0+0+0
5    R=RND(31)
6    IF A(R)=1 THEN RETURN
7    A(R)=1
8    PLOT R,9,104
9    D=D+1
10   RETURN
50   FOR B=160 TO 190
55   IF RND(10)=5 THEN GOSUB 2
60   IF JOY(3)>0 THEN 300
65   POKE 218,B
70   PRINT A$
80   NEXT B
85   POKE 218,191
90   PRINT" "
110  IF T<1 THEN 7040
120  T=T-1
130  COLOR T+18,1,1
140  GOSUB 200
150  GOTO 50
200  POKE 218,223
205  PRINT"  SCORE";S
250  RETURN
300  C=B-159
301  POKE 4098,208
302  POKE 4098,0
303  POKE 4098,207
310  FOR I=18 TO 9 STEP -3
320  PLOT C,I+3,32
330  PLOT C,I,96
340  POKE 4098,I
360  NEXT I
380  IF A(C)=0 THEN 450
390  POKE 4098,240
400  PLOT C,9,120
410  A(C)=0
420  S=S+250
425  PLOT C,9,121
430  D=D-1
435  PLOT C,9,122
440  IF D<1 THEN S=S+((T+1)**2)*40
450  PLOT C,9,32
460  SOUND 1;0
470  S=S-100
480  GOSUB 200
490  IF RND(6)=4 THEN GOSUB 2
500  GOTO 65
7040 IF S<=U THEN 7500
7045 CLS
7050 PRINT"        CONGRATULATIONS"
7100 SOUND 26;3
7110 SOUND 21;2
7120 SOUND 21;1
7130 SOUND 23;3
7140 SOUND 21;3
7150 SOUND 1;3
7160 SOUND 9;3,19;3,25;3
7170 SOUND 2;3,18;3,26;3
7200 CLS
7240 PRINT"PLEASE PRINT YOUR NAME"
7250 PRINT
7260 PRINT"RECORD HOLDER"
7270 PRINT
7280 INPUT N$
7310 PRINT
7320 PRINT
7330 CLS
7340 PRINT" OLD RECORD  WAS ";U
7350 PRINT
7360 PRINT
7400 T=T+1
7410 U=S
7420 E=E+1
7430 F(E)=S
7480 PRINT"NEW ";
7490 GOTO 7650
7500 CLS
7630 PRINT
7640 PRINT
7650 PRINT"RECORD BY "+N$+" IS"
7660 PRINT
7670 PRINT"        ";U
7680 PRINT
7690 PRINT
7700 PRINT" YOUR SCORE  WAS "
7710 PRINT
7720 PRINT"          ";S
7730 PRINT
7740 PRINT
7750 PRINT"ALL RECORDS  ARE:"
7760 PRINT
7770 FOR I=1 TO E
7780 PRINT F(I);" " ;
7790 NEXT I
7800 PRINT
7805 PRINT
7810 PRINT"TO CONTINUE PRESS <!>"
7820 PRINT
7830 PRINT"TO STOP PRESS <->"
7840 GOTO JOY(4)+7840
7841 GOTO 9950
7842 GOTO 9000
7843 GOTO 7840
8000 CLS
8010 DIM F(32)
8020 DIM A(32)
8030 CHAR 96,10101010101010
8040 CHAR104,183C7E3C42818181
8050 CHAR112,001818BDFF99BDBD
8060 CHAR120,9110183FFD180889
8070 CHAR 33,080C0EFFFF0E0C08
8080 CHAR121,814224F00F244281
8090 CHAR128,000000000000033F
8100 CHAR136,000000000017FF7F
8110 CHAR144,000000077FFFFF7F
8120 CHAR152,00001FFFFFFFFF7F
8130 CHAR160,077FFFFFFFFFFF7F
8140 CHAR168,FFFFFFFFFFFFFF7F
8150 CHAR122,1024814824011842
8200 COLOR 13,16,1
8210 COLOR 14,11,1
8220 COLOR 15,7,1
8230 COLOR 7,14,1
8240 COLOR 8,14,1
8250 COLOR 16,7,1
8260 COLOR 6,14,1
8270 FOR I=17 TO 22
8280 COLOR I,14,1
8290 NEXT I
8300 B$="                           "
8400 A$=" "+CHR$(112)+" "
8500 N$="FIRST GAME"
8510 GOTO 8600
8520 IF JOY(4)=1 THEN 8570
8525 IF JOY(4)=2 THEN 9000
8530 GOTO 8520
8570 POKE 218,2
8575 FOR I=1 TO 7
8580 PRINT B$
8585 NEXT I
8590 POKE 218,2
8595 RETURN
8600 POKE 4098,239
8610 SOUND 1;1
8700 PRINT"           ***************"
8705 PRINT"           *             *"
8710 PRINT"           * WIZZARD WAR *"
8715 PRINT"           *             *"
8720 PRINT"           ***************"
8740 PRINT
8760 PRINT
8765 PRINT
8770 PRINT" TO START GAME PRESS !"
8775 PRINT
8783 PRINT" FOR CONTINUING INSTRUCTIONS"
8785 PRINT
8790 PRINT" PRESS -"
8795 PRINT
8800 GOSUB 8575
8805 PRINT"THE OBJECT IS TO SHOOT"
8810 PRINT
8815 PRINT" ALL THE ALIENS "+":"+CHR$(104)+" "+CHR$(104)
8820 PRINT
8825 PRINT" "+CHR$(104)+" "+"APPEAR AT RANDOM TIMES"
8828 PRINT
8830 PRINT" BUT MORE DURING FIRING"
8840 GOSUB 8520
8850 PRINT"THE DEFEDING ROCKET"
8855 PRINT
8860 PRINT" TRAVELS ACROSS THE SCREEN"
8865 PRINT
8870 PRINT" 5 TIMES. AS INDICATED BY"
8875 FOR I=128 TO 168 STEP 8
8880 PLOT (I/8-12),23,I
8885 NEXT I
8890 POKE 218,202
8895 PRINT".TO FIRE PRESS SHIFT"
8900 GOSUB 8520
8910 PRINT"SCORING:"
8915 PRINT
8920 PRINT" A HIT = + 150"
8925 PRINT" A MISS= - 100"
8930 PRINT" A  "+CHR$(104)+"  = -   5"
8940 PRINT" A SCREEN CLEAR OF "+CHR$(104)+" GIVES"
8950 PRINT" BONUS = ((FUEL)**2)*40.    "
8955 GOSUB 8520
8960 PRINT" TO START GAME PRESS !"
8970 IF JOY(4)=2 THEN 9000
8990 GOTO 8970
9000 CLS
9010 FOR I=1 TO 32
9020 A(I)=0
9040 NEXT I
9050 T=5
9060 D=0
9080 C=0
9090 B=0
9100 S=2000
9200 POKE 218,241
9210 PRINT N$;" ";U
9220 GOSUB 200
9300 FOR I=128 TO 168 STEP 8
9310 PLOT (I/8-4),24,1
9320 COLOR I/8+1,14,1
9350 NEXT I
9800 GOSUB 2
9810 GOSUB 2
9900 GOTO 50
9950 CLS
9960 REM*BY J.TUCKER*
9970 REM*GRAPHICS BY EDWIN    TUCKER*
9990 END
