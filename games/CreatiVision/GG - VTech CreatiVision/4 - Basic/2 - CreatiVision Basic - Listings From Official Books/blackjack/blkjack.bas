7    PRINTTAB(10);"BLACKJACK"
8    PRINTTAB(10);"#########"
9    FORY=1TO5
10   PRINT
11   NEXT
12   PRINT"WRITTEN BY J.A.STEVENS"
25   CLS
26   GOSUB9000
30   DATA80,76,46,32,72,73,84,83,84,65,78,68,32
31   DATA87,73,78,78,69,82
32   GOSUB3000
35   CLS
40   DIMS(3,2),P(3),L(6),G(6)
44   DIMQ(3,3),Z(3),D(52)
45   DIMA(3,6),B(3,3),C(3,6)
46   GOSUB9900
47   O=O+1
48   CLS
49   S=0
50   GOSUB2800
65   IFS>34THENGOSUB9950
70   FORY=1TO3
80   FORX=1TO6
90   GOSUB2900
110  NEXTX
120  NEXTY
125  GOSUB7000
130  CLS
135  F=0
136  S(1,1)=0
137  S(1,2)=0
140  FORY=2TO3
141  PRINT"HAND ";O
142  PRINT
145  B(Y,2)=0
146  S(Y,1)=0
147  S(Y,2)=0
148  Z(Y)=0
150  IFY=2THENPRINTA$;
151  IFY=3THENPRINTB$;
152  PRINT" WITH $";B(Y,1)
153  PRINT
154  PRINT"BID HOW MUCH PER CARD?"
155  PRINT
160  PRINT"''''> $";
165  INPUTB(Y,3)
166  IFB(Y,3)<1THEN182
167  IFB(Y,3)>B(Y,1)THEN182
170  PRINT
175  PRINT"    ''''''''''''''"
180  NEXTY
181  GOTO190
182  PRINT
183  PRINT"MINIMUM $1,MAXIMUM $";B(Y,1)
184  GOTO155
190  CLS
200  B(2,2)=B(2,3)
205  B(3,2)=B(3,3)
210  GOSUB6000
215  FORP=1TO3
220  FORG=1TO2
230  GOSUB8000
240  NEXTG
245  NEXTP
250  REM*CONTINUE HAND
255  FORP=2TO3
260  G=2
265  G=G+1
266  IFS(P,2)>0THEN420
267  IFS(P,1)=21THEN420
268  IFG>6THEN420
270  FORK=3TO5
275  READH
280  PLOTK,20,H
285  NEXTK
286  PLOT6,20,P+47
290  FORK=8TO18
300  READH
305  PLOTK,20,H
313  NEXTK
315  RESTORE
320  IFJOY(3)=1THEN330
325  IFJOY(3)=2THEN340
327  GOTO320
330  PLOT8,20,37
331  IFB(P,2)+B(P,3)=>B(P,1)THEN3500
335  B(P,2)=B(P,2)+B(P,3)
337  GOTO360
340  PLOT18,20,37
350  GOTO420
360  G(6)=B(P,2)
365  I=5
370  IFP=2THENJ=23
375  IFP=3THENJ=24
380  GOSUB6800
385  FORX=25TO29
390  PLOTX,J,G(I)+48
392  I=I-1
395  NEXTX
400  GOSUB8000
410  GOTO265
420  NEXTP
430  FORX=1TO32
435  PLOTX,20,32
440  NEXTX
445  IFS(2,2)=2ANDS(3,2)=2THEN480
450  REM*DEALER HAND
455  P=1
456  F=1
460  G=1
465  G=G+1
466  IFG>6THEN480
470  GOSUB8000
475  IFS(P,1)<17THEN465
480  FORP=2TO3
482  IFS(P,2)=1ANDS(1,2)<>1THENB(P,1)=B(P,2)+B(P,2)
485  IFS(P,2)=1THENZ(P)=2
490  IFS(P,2)=2THENZ(P)=1
495  IFZ(P)>0THEN500
496  IFS(P,1)>S(1,1)THENZ(P)=2
497  IFS(1,1)>21THENZ(P)=2
498  IFS(P,1)>21THENZ(P)=1
500  IFZ(P)>1THENB(P,1)=B(P,1)+B(P,2)
505  IFZ(P)<2THENB(P,1)=B(P,1)-B(P,2)
510  NEXTP
515  IFZ(2)<2ANDZ(3)<2THEN600
517  IFZ(2)=2ANDZ(3)=2THEN690
520  IFZ(2)=2THEN650
525  IFZ(3)=2THEN670
600  P=1
605  A=0
610  GOTO700
650  P=2
655  A=1
660  GOTO700
670  P=3
675  A=2
680  GOTO700
690  A=3
700  P=A+1
701  IFA=3THEN800
705  GOSUB900
710  GOTO1000
800  IFS(2,1)>21ANDS(3,1)>21THEN600
805  FORP=2TO3
810  GOSUB900
820  NEXTP
830  GOTO1000
900  FORK=1TO13
905  READH
910  NEXTK
915  FORX=26TO31
920  READH
930  PLOTX,P(P)-2,H
940  NEXTX
950  RESTORE
960  RETURN
1000 IFB(2,1)=<0THEN1010
1001 IFB(3,1)=<0THEN1010
1002 GOSUB9600
1003 IFO<TTHEN47
1010 GOSUB9600
1015 CLS
1020 PRINTA$;" HAS $";B(2,1)
1030 PRINT
1040 PRINTB$;" HAS $";B(3,1)
1050 B(1,1)=(10000-B(2,1))+(10000-B(3,1))
1060 PRINT
1070 PRINT"DEALER HAS $";B(1,1)
1080 PRINT
1999 END
2800 FORY=1TO52
2810 IFD(Y)=0THENS=S+1
2820 NEXTY
2830 RETURN
2900 A=RND(52)
2910 IFD(A)=0THEN2940
2920 C(Y,X)=D(A)
2925 D(A)=0
2930 RETURN
2940 A=A+1
2945 IFA>52THENA=1
2950 GOTO2910
3000 CLS
3010 PRINTTAB(10);"BLACKJACK"
3011 PRINTTAB(10);"'''''''''"
3012 PRINT
3013 PRINT"ENTER AMOUNT OF HANDS TO BE  "
3014 PRINT"PLAYED, OR 0 FOR A GAME OF   "
3015 PRINT"BETWEEN 1 AND 10 HANDS       "
3016 PRINT"SELECTED RANDOMLY ";
3020 INPUTT
3021 IFT=0THENT=RND(10)
3030 CLS
3040 FORY=1TO2
3045 PRINT
3050 PRINT"PLAYER ";Y;" WISH TO DISPLAY    "
3060 PRINT"YOUR NAME";
3070 INPUTZ$
3072 PRINT
3075 IFZ$="N"THEN3110
3080 PRINT"ENTER NAME";
3085 IFY=1THENINPUTA$
3090 IFY=2THENINPUTB$
3091 IFY=1THENZ$=A$
3092 IFY=2THENZ$=B$
3093 L=LEN(Z$)
3094 IFL>9THEN3130
3095 NEXTY
3100 RETURN
3110 IFY=1THENA$="PLAYER 1"
3115 IFY=2THENB$="PLAYER 2"
3120 GOTO3095
3130 PRINT
3135 PRINT"TOO LONG"
3140 PRINT
3145 GOTO3080
3500 B(P,2)=B(P,1)
3510 GOTO360
4000 PLOT26,P(P)-2,33
4001 PLOT27,P(P)-2,85
4002 PLOT28,P(P)-2,78
4003 PLOT29,P(P)-2,68
4004 PLOT30,P(P)-2,69
4005 PLOT31,P(P)-2,82
4006 GOTO8860
6000 REM*PLOT BOARD
6010 FORY=1TO3
6015 IFY=1THENZ$="DEALER"
6020 IFY=2THENZ$=A$
6021 IFY=3THENZ$=B$
6025 L=LEN(Z$)
6030 FORX=1TOL
6035 Q=ASC(MID$(Z$,X,1))
6040 PLOTX+2,P(Y)-2,Q
6045 NEXTX
6050 PLOT12,P(Y)-1,39
6055 PLOT13,P(Y)-1,39
6060 IFY<2THEN6200
6065 PLOT15,P(Y)-2,66
6070 PLOT16,P(Y)-2,65
6075 PLOT17,P(Y)-2,78
6080 PLOT18,P(Y)-2,75
6085 PLOT19,P(Y)-2,36
6090 G(6)=B(Y,1)
6100 GOSUB6800
6105 I=5
6110 FORX=20TO24
6115 PLOTX,P(Y)-2,G(I)+48
6120 I=I-1
6125 NEXTX
6130 IFY=2THENJ=23
6131 IFY=3THENJ=24
6135 G(6)=B(Y,2)
6140 GOSUB6800
6145 PLOT18,J,66
6150 PLOT19,J,69
6155 PLOT20,J,84
6160 PLOT21,J,45
6165 PLOT22,J,Y+47
6170 PLOT24,J,36
6175 I=5
6180 FORX=25TO29
6185 PLOTX,J,G(I)+48
6190 I=I-1
6195 NEXTX
6200 NEXTY
6205 FORX=1TO32
6210 PLOTX,19,39
6215 NEXTX
6220 RETURN
6800 G(5)=INT(G(6)/10000)
6805 G(6)=G(6)-(G(5)*10000)
6810 G(4)=INT(G(6)/1000)
6815 G(6)=G(6)-(G(4)*1000)
6820 G(3)=INT(G(6)/100)
6825 G(6)=G(6)-(G(3)*100)
6830 G(2)=INT(G(6)/10)
6835 G(6)=G(6)-(G(2)*10)
6840 G(1)=INT(G(6))
6845 RETURN
7000 REM* SORT CARD VALUES
7010 FORY=1TO3
7020 FORX=1TO6
7030 Z=39
7040 IFC(Y,X)<40THENZ=26
7050 IFC(Y,X)<27THENZ=13
7060 IFC(Y,X)<14THENZ=0
7100 A(Y,X)=C(Y,X)-Z
7500 NEXTX
7510 NEXTY
7520 RETURN
8000 FORX=1TO3
8001 FORY=1TO3
8002 Q(X,Y)=127
8003 IFP=1ANDG=2ANDF=0THENQ(X,Y)=1
8004 NEXTY
8005 NEXTX
8006 IFP=1ANDG=2ANDF=0THEN8550
8007 Z=113
8008 IFC(P,G)<40THENZ=112
8015 IFC(P,G)<27THENZ=105
8020 IFC(P,G)<14THENZ=104
8100 FORX=1TO3STEP2
8105 FORY=1TO3STEP2
8110 Q(X,Y)=Z
8115 NEXTY
8120 NEXTX
8500 V=A(P,G)+113
8510 Q(2,2)=V
8550 M=L(G)-1
8560 N=P(P)-1
8600 FORX=1TO3
8610 FORY=1TO3
8650 PLOTM+X,N+Y,Q(X,Y)
8660 NEXTY
8670 NEXTX
8675 IFG=2ANDP=1ANDF=0THEN8990
8680 IFA(P,G)>10THENA(P,G)=10
8685 S(P,1)=S(P,1)+A(P,G)
8690 IFG<>2THEN8700
8692 IFA(P,G)=10ANDS(P,1)=11THENS(P,1)=21
8695 IFA(P,G)=1ANDS(P,1)=11THENS(P,1)=21
8698 IFS(P,1)=21THENS(P,2)=1
8700 IFS(P,1)>21THENS(P,2)=2
8701 IFA(P,G)=1ANDS(P,1)=11THENS(P,1)=21
8710 IFS(P,2)>0THEN8800
8720 GOTO8840
8800 IFS(P,2)=2THEN8820
8805 G(2)=18
8810 G(1)=26
8815 GOTO8855
8820 G(2)=40
8830 G(1)=40
8835 GOTO8855
8840 G(6)=S(P,1)
8850 GOSUB6830
8855 I=2
8857 IFG=5ANDS(P,1)<21THENS(P,2)=1
8858 IFG=5ANDS(P,1)<21THEN4000
8860 FORX=12TO13
8865 PLOTX,P(P)-2,G(I)+48
8870 I=I-1
8875 NEXTX
8990 RETURN
9000 CHAR104,183C7EFFFF7E3C18
9010 CHAR105,66FFFFFFFF7E3C18
9020 CHAR112,183C5AFFFF5A183C
9030 CHAR113,00183C7EFFFF993C
9040 CHAR115,7EFFC3037E80FFFF
9050 CHAR116,7EFFC31E1EC3FF7E
9060 CHAR117,0E1E3666FFFF0606
9070 CHAR118,FFFFC0FF03C3FF7E
9080 CHAR119,7EFEC0FEFFC3FF7E
9090 CHAR120,7E7E060C18303030
9100 CHAR121,7EFFC37E7EC3FF7E
9110 CHAR122,7EFFC3FF7F037F7E
9120 CHAR123,CEDFDBDBDBDFCE
9130 CHAR114,183C66C3C3FFC3C3
9140 CHAR124,FFFF0C0C0CCCFC78
9150 CHAR125,7CFEC6C6C6C6FF7D
9155 CHAR39,000000FFFF
9160 CHAR126,C6CCD8F0D8CCC6C3
9165 CHAR1,AA55AA55AA55AA55
9170 CHAR33,007E607C0202623C
9175 CHAR37,3C7EFFFFFFFF7E3C
9180 COLOR0,8
9182 COLOR1,3,16
9185 COLOR5,7,1
9190 FORY=6TO12
9200 COLORY,2,1
9210 NEXT
9220 COLOR14,7,16
9230 COLOR15,2,16
9240 COLOR16,2,16
9250 RETURN
9600 FORY=1TO100
9605 NEXTY
9610 RETURN
9900 REM*POSITIONING PLOTTERS
9901 G=3
9902 FORY=1TO6
9903 L(Y)=G
9904 G=G+4
9905 NEXTY
9906 G=3
9907 FORY=1TO3
9908 P(Y)=G
9909 G=G+6
9910 NEXTY
9911 B(2,1)=10000
9912 B(3,1)=10000
9950 CLS
9951 PRINT"SHUFFLING NEW DECK"
9952 FORY=1TO52
9960 D(Y)=Y
9970 NEXTY
9999 RETURN
