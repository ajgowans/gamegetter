10   REM : STATISTICS I
20   REM : (PART 2)
40   CLS
50   PRINT" INTRODUCTION TO STATISTICS"
60   GOSUB9500
70   PRINT"GEOMETRIC MEAN/STD. DEVIATION"
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
310  PRINT"GEOMETRIC MEAN/STD. DEVIATION"
320  GOSUB9500
330  F=0
340  GOSUB400
350  RETURN
400  PRINT"NO. OF OBSERVATIONS"
410  PRINT"(MUST NOT < 2) ";
420  INPUTN
430  GOSUB9500
440  P=1/N
450  M=1
460  Q=0
470  FORI=1TON
480  PRINT"ITEM ";I;
490  INPUTD
500  M=M*D**P
510  Q=Q+LOG(D)**2
520  NEXT
530  R=N/(N-1)*(LOG(M))**2
540  Z=SQR(Q/(N-1)-R)
550  R=EXP(Z)
560  GOSUB9500
570  PRINT"GEOMETRIC MEAN      = ";M
580  PRINT
585  PRINT
590  PRINT"GEOMETRIC DEVIATION = ";R
600  GOSUB9500
610  GOSUB9000
620  RETURN
900  CLS
910  PRINTTAB(7);"TUTORIAL SESSION"
920  GOSUB9500
930  PRINT"GEOMETRIC MEAN : IS THE"
940  PRINT"PRODUCT OF THE VALUES OF A"
950  PRINT"SET OF OBSERVATIONS ROOTED"
960  PRINT"BY THE NUMBER OF OBSER-"
970  PRINT"VATIONS."
990  GOSUB9500
1010 PRINT"GM = (X1*X2*...XN)**(1/N)"
1020 GOSUB9500
1030 GOSUB9000
1040 PRINTTAB(7);"TUTORIAL SESSION"
1050 GOSUB9500
1060 PRINT"STANDARD DEVIATION : IS THE"
1070 PRINT"SQUARE ROOT OF THE SUM OF"
1080 PRINT"THE SQUARE OF DIFFERENCE OF"
1090 PRINT"VALUE X FROM GEOMETRIC MEAN"
1100 PRINT"(GM)."
1110 GOSUB9500
1120 PRINT"SD = SQR(SUM(X-GM)**2)"
1130 GOSUB9500
1140 GOSUB9000
1150 PRINTTAB(7);"TUTORIAL SESSION"
1160 GOSUB9500
1170 PRINT"EG.1 : TO FIND THE GEOMETRIC"
1180 PRINT"MEAN OF A SET OF OBSER-"
1190 PRINT"VATIONS, ENTER THE NO. OF"
1200 PRINT"OBSERVATIONS AND THE VALUE"
1210 PRINT"OF EACH OBSERVATION."
1220 GOSUB9500
1230 GOSUB400
1240 GOSUB9500
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
2140 PRINT"INCORRECT, REPEAT TUTORIAL !!"
2200 GOSUB9500
2210 GOSUB9000
2220 RETURN
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
