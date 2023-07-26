10   REM : STATISTICS II
20   REM : (PART 6)
40   CLS
50   PRINT"INTRODUCTION TO STATISTICS II"
60   GOSUB9500
70   PRINTTAB(5);"LINEAR COEFFICIENT"
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
310  PRINTTAB(5);"LINEAR COEFFICENT"
320  GOSUB9500
330  F=0
340  GOSUB400
350  RETURN
400  IFF=0THEN430
410  PRINT"NO. OF PAIRS (=>2)";
420  GOTO440
430  PRINT"NO. OF POINTS (=>2)";
440  INPUTN
445  GOSUB9500
450  J=0
460  K=0
470  M=0
480  L=0
490  R=0
500  FORI=1TON
510  IFF=0THENPRINT"X,Y OF POINT ";I;
520  IFF=1THENPRINT"X,Y OF PAIR ";I;
530  INPUTX,Y
535  GOSUB9500
540  J=J+X
550  K=K+Y
560  L=L+X**2
570  M=M+Y**2
580  R=R+X*Y
590  NEXT
600  S=(N*L-J**2)*(N*M-K**2)
610  IFS>-0.0001ANDS<0.001THEN630
620  S=(N*R-J*K)/SQR(S)
630  PRINT"COEFFICIENT OF CORRELATION"
640  PRINT"= ";S
650  GOSUB9500
660  GOSUB9000
670  RETURN
900  CLS
910  PRINTTAB(7);"TUTORIAL SESSION"
920  GOSUB9500
930  PRINTTAB(5);"LINEAR COEFFICIENT"
940  GOSUB9500
950  PRINT"LINEAR CORRELATION COEFFIC-"
960  PRINT"IENT ENABLES US TO ASSESS"
970  PRINT"THE DEGREE OF ASSOCIATION"
980  PRINT"AMONG VARIABLES ASSUMING A"
990  PRINT"LINEAR RELATIONSHIP BETWEEN"
1000 PRINT"THE VARIABLES.  IT GIVES THE"
1010 PRINT"RELATIVE VARIATION OF THE Y"
1020 PRINT"VALUES AROUND THE REGRESSION"
1030 PRINT"LINE & CORRESPONDING VARI-"
1040 PRINT"ATION AROUND THE MEAN OF THE"
1050 PRINT"REGRESSION LINE AND CORRES-"
1060 PRINT"PONDING VARIATION AROUND THE"
1070 PRINT"MEAN OF THE Y VARIABLE."
1080 PRINT
1090 PRINT"'VARIATION' REFERS TO THE"
1100 PRINT"SUM OF SQUARED DEVIATIONS."
1110 GOSUB9000
1120 PRINT"COEFFICIENT OF CORRELATION R"
1130 GOSUB9500
1140 PRINT"R = (N*A-B)/SQR(C*D)"
1150 GOSUB9500
1160 PRINT"A = SUM(X*Y)"
1170 PRINT"B = SUM(X)*SUM(Y)"
1180 PRINT"C = N*SUM(X**2)-SUM(X)**2"
1190 PRINT"D = N*SUM(Y**2)-SUM(Y)**2"
1200 PRINT"X = OBSERVED X VALUE"
1210 PRINT"Y = OBSERVED Y VALUE"
1220 PRINT"N = NO. OF OBSERVATIONS"
1225 GOSUB9500
1230 GOSUB9000
1240 PRINT"THE ALGEBRAIC SIGN ATTACHED"
1250 PRINT"TO R IS THE SAME AS THAT OF"
1260 PRINT"THE REGRESSION COEFFICIENT,"
1270 PRINT"B, OF THE REGRESSION EQ-"
1280 PRINT"UATION Y=A+BX DERIVED FROM"
1290 PRINT"OBSERVED VARIABLE."
1300 GOSUB9500
1310 PRINT"A FIGURE OF R=-1 INDICATES"
1320 PRINT"AN INVERSE LINEAR RELATION-"
1330 PRINT"SHIP BETWEEN X AND Y; R=+1"
1340 PRINT"INDICATES A PERFECT DIRECT"
1350 PRINT"RELATIONSHIP, AND R=0 INDI-"
1360 PRINT"CATES NO LINEAR RELATIONSHIP."
1365 PRINT
1370 GOSUB9000
1380 PRINT"EG.1 : TO FIND RELATIONSHIP"
1390 PRINT"BETWEEN THE HEIGHTS OF FA-"
1400 PRINT"THERS & THE HEIGHTS OF THEIR"
1410 PRINT"SONS."
1420 PRINT
1430 PRINT
1440 PRINT"X = HEIGHT OF FATHER"
1450 PRINT
1460 PRINT"Y = HEIGHT OF SON"
1465 F=1
1470 GOSUB9500
1480 GOSUB400
1490 PRINTTAB(7);"REVIEW QUESTION"
1500 PRINTTAB(7);"==============="
1510 GOSUB9500
1520 PRINT"WHAT IS THE DEGREE OF CO-"
1530 PRINT"RRELATION FOR A PERFECT"
1540 PRINT"INVERSE RELATIONSHIP BETWEEN"
1550 PRINT"X & Y FOR A LINEAR EQUATION"
1560 PRINT"Y=A-BX ";
1570 INPUTX
1580 GOSUB9500
1590 IFX=-1THENPRINT"YES, -1 IS CORRECT."
1600 IFX<>-1THENPRINT"INCORRECT, REPEAT TUTORIAL!"
1610 GOSUB9500
1620 GOSUB9000
1630 RUN
3000 CLS
3010 PRINTTAB(8);"END OF PROGRAM"
3013 GOSUB9500
3015 PRINTTAB(5);"PRESS RESET TO STOP"
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