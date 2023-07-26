10   REM : STATISTICS I
20   REM : (PART 3)
30   DIMM(5)
40   CLS
50   PRINT" INTRODUCTION TO STATISTICS"
60   GOSUB9500
70   PRINT"   BINOMIAL DISTRIBUTION"
80   GOSUB9500
85   GOSUB9500
90   PRINT"OPTIONS :"
100  PRINT
110  PRINT"1. TUTORIAL SESSION"
120  PRINT"2. STATISTICAL PROCEDURE"
130  PRINT"3. SKIP TO NEXT TOPIC"
140  PRINT"4. END PACKAGE"
150  GOSUB9500
160  PRINT"YOUR CHOICE (1-4)";
170  INPUTO
180  IFO<=4ANDO=>1THEN200
190  GOTO160
200  CLS
210  IFO=4THEN3000
220  IFO=3THEN4000
230  IFO=2THENF=0
240  IFO=1THENGOSUB900
250  IFO=2THENGOSUB300
260  RUN
300  CLS
310  PRINT"   BINOMIAL DISTRIBUTION"
320  GOSUB9500
330  F=0
340  GOSUB400
350  RETURN
400  IFF=0THENPRINT"NO. OF TRIALS"
410  IFF=1THENPRINT"NO. OF TOSSES"
420  PRINT"(MUST > 0)";
430  INPUTN
440  GOSUB9500
450  IFF=0THENPRINT"EXACT NO. OF SUCCESSES"
460  IFF=1THENPRINT"EXACT NO. OF HEADS"
470  PRINT"(MUST > NO. OF TRIALS)";
480  INPUTX
490  GOSUB9500
500  PRINT"PROBABILITY OF SUCCESS (%)"
510  PRINT"(MUST < 1)";
520  INPUTP
530  GOSUB9500
540  IFP=0THENR=0
550  IFP=0THEN690
560  M(1)=N
570  M(2)=X
580  M(3)=N-X
585  FORI=1TO3
590  IFM(I)=0THEN650
600  A=1
605  Z=M(I)
610  FORJ=1TOZ
620  A=A*J
630  NEXT
640  M(I)=LOG(A)
650  NEXT
660  C=M(1)-M(2)-M(3)
670  G=C+X*LOG(P)+(N-X)*LOG(1-P)
680  R=EXP(G)
690  PRINT"PROBABILITY OF ";X;
700  IFF=0THENPRINT" SUCCESSES IN"
705  IFF=0THENPRINTN;
710  IFF=1THENPRINT" HEADS IN";N
720  GOSUB9500
730  IFF=0THENPRINT"TOSSES = ";R
740  IFF=1THENPRINT"TRIALS = ";R
750  GOSUB9500
760  GOSUB9000
770  RETURN
900  CLS
910  PRINTTAB(7);"TUTORIAL SESSION"
920  GOSUB9500
930  PRINT"BINOMIAL DISTRIBUTION : IS A"
940  PRINT"FAMILY OF PROBABILITY DIS-"
950  PRINT"TRIBUTION OF A DISCRETE RAN-"
960  PRINT"DOM VARIABLE.  IT MEASURES"
970  PRINT"THE PROBABILITY OF A POSS-"
980  PRINT"IBLE OUTCOME FOR PROCESS"
990  PRINT"TAKING UNDER FOLLOWING CON-"
1000 PRINT"DITIONS :"
1010 PRINT
1020 PRINT"1. TWO MUTUAL EXCLUSIVE"
1030 PRINT"   POSSIBLE OUTCOMES."
1040 PRINT"   (SUCCESS/FAIL)"
1050 PRINT
1060 PRINT"2. PROBABILITY OF OBTAINING"
1070 PRINT"   A SUCCESS REMAINS CON-"
1080 PRINT"   STANT FROM TRIAL TO TRIAL"
1090 PRINT
1100 PRINT"3. TRIALS ARE INDEPENDENT"
1120 GOSUB9000
1130 PRINT"THE PROBABILITY OF OBTAINING"
1140 PRINT"X SUCCESSES IN N TRIALS :"
1150 PRINT
1151 PRINT
1160 PRINT"F(X) = N!*Q/(X!*(N-X)!)"
1170 PRINT
1171 PRINT
1180 PRINT" Q = ((1-P)**(N-X))*(P**X)"
1190 PRINT" N = TOTAL NO. OF TRIALS"
1200 PRINT" X = EXACT NO. OF SUCCESS"
1210 PRINT"   = 0,1,2,...,N"
1220 PRINT" P = PROBABILITY OF GETTING"
1230 PRINT"     A SUCCESS"
1240 PRINT"N! = N*(N-1)*(N-2)*...*2*1"
1245 GOSUB9500
1250 GOSUB9000
1260 PRINT"EG.1 : TO FIND THE PROB-"
1270 PRINT"ABILITY OF GETTING X HEADS"
1280 PRINT"IN N TOSSES OF A FAIR COIN."
1290 GOSUB9500
1300 F=1
1310 GOSUB400
1320 PRINTTAB(7);"REVIEW QUESTION"
1330 PRINTTAB(7);"==============="
1340 GOSUB9500
1350 PRINT"THE TYPE OF PROCESS THAT"
1360 PRINT"GIVES RISE TO BINOMIAL"
1370 PRINT"DISTRIBUTION SHOULD HAVE 'X'"
1380 PRINT"EXCLUSIVE POSSIBLE OUTCOMES."
1390 GOSUB9500
1400 PRINT"X =";
1410 INPUTX
1420 GOSUB9500
1430 IFX=2THENPRINT"YES, 2 IS CORRECT."
1440 IFX<>2THENPRINT"INCORRECT, REPEAT TUTORIAL !"
1450 GOSUB9000
1460 RUN
2020 CLS
2030 PRINTTAB(7);"TUTORIAL SESSION"
2040 GOSUB9500
2050 PRINT"REVIEW QUESTION :"
2060 PRINT"==============="
2070 GOSUB9500
2080 PRINT"HOW VALUES OF X ARE 'SUMMED'"
2090 PRINT"UP IN THE CALCULATION OF"
2100 PRINT"GEOMETRIC MEAN."
2110 GOSUB9500
2112 PRINT"1. BY SUMMATION OF X VALUE"
2114 PRINT"2. BY PRODUCT OF X VALUE"
2116 PRINT"3. NEITHER 1 NOR 2"
2120 PRINT
2122 PRINT
2124 PRINT"YOUR CHOICE";
2126 INPUTX
2128 GOSUB9500
2130 IFX=2THENPRINT"YES, 2 IS CORRECT."
2135 IFX=2THEN2200
2140 PRINT"INCORRECT, REPEAT TUTORIAL !"
2200 GOSUB9500
2210 GOSUB9000
2220 RETURN
3000 CLS
3010 PRINTTAB(7);"END OF PROGRAM"
3013 GOSUB9500
3015 PRINTTAB(4);"PRESS RESET TO STOP"
3020 GOSUB9500
3030 GOSUB9500
3040 GOSUB9500
3100 GOTO3100
4000 CLS
4010 PRINTTAB(8);"TAPE LOADING"
4020 GOSUB9500
4025 GOSUB9500
4030 GOSUB9500
4040 GOSUB9500
4100 CRUN
9000 PRINT
9010 PRINT
9020 PRINT"HIT -RETURN- TO CONTINUE";
9030 INPUTA$
9035 CLS
9040 RETURN
9500 PRINT
9505 PRINT
9510 PRINT
9520 RETURN
