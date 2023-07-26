1    REM *WIZZARD MIND*
2    REM (WRITTEN BY WAYNE G. RICHMOND)
3    CLS
4    GOTO 11
5    M=((RND(7)+I+1)*2)-1
6    O=(RND(3)+I)*2
7    T=RND(6)+I
9    PLOT M,O,8*T+92
10   RETURN
11   H=2
12   J=0
13   IF RND(1) < 1 THEN I = 1
14   DIM S(4)
15   DIM G(4)
16   DIM A(6)
17   FOR N = 9 TO 12
18   COLOR N,16,2
19   NEXT N
20   GOSUB 7000
25   FOR Y = 2 TO 7 STEP 2
26   SOUND 7;0,14;0,31;0
27   FOR X = 3 TO 16 STEP 2
30   T=RND(6)+I
35   PLOT X,Y,8*T+92
38   NEXT
40   NEXT
50   DATA 87,73,90,90
52   DATA 65,82,68
54   DATA 16,77,73,78,68
58   DATA 100,32,82,69,68,32
60   DATA 32,108,32,87,72,73
62   DATA 84,69,32,116,32
64   DATA 66,76,85,69,32
66   DATA 124,32,71,82,69
68   DATA 69,78,32
70   DATA 140,32,80,73,78
72   DATA 75,32,132,32,89
74   DATA 69,76,76,79,87
82   DATA 80,82,69,83,83,32
84   DATA 74,79,89,83
86   DATA 84,73,67,75
88   DATA 70,79,82,32
90   DATA 82,69,80,76,65,89
92   DATA 65,89
93   GOSUB 6000
95   GOSUB7500
100  U=0
104  G=0
105  K=0
106  R=R+2
108  IF R = 22 THEN 9010
110  GOSUB 300
120  FOR N = 1 TO 6
125  A(N)=0
130  NEXT N
135  GOSUB 200
140  PLOT X,Y,Z
160  IF JOY(1) > 0 THEN GOSUB 197
165  IF JOY(2) > 0 THEN 900
168  GOSUB 5
170  PLOT X,Y,32
180  IF JOY(1) > 0 THEN GOSUB 195
185  IF JOY(2) > 0 THEN 900
190  GOTO 140
195  PLOT X,Y,Z
197  SOUND 12;0,14;0,18;0
199  PLOT X,Y,Z
200  K=K+1
210  IF K = 7 THEN K = 1
215  IF A(K)=9 THEN 200
220  IF K = 1 THEN GOTO 300
230  IF K = 2 THEN GOTO 400
240  IF K = 3 THEN GOTO 500
250  IF K = 4 THEN GOTO 600
260  IF K = 5 THEN GOTO 700
270  IF K = 6 THEN GOTO 800
300  REM *BLINK RED*
310  X=3
320  Y=18
330  Z=100
340  RETURN
400  REM *BLINK WHITE*
410  X=10
420  Y=18
430  Z=108
440  RETURN
500  REM *BLINK GREEN*
510  X=10
520  Y=20
530  Z=124
540  RETURN
600  REM *BLINK YELLOW*
610  X=10
620  Y=22
630  Z=132
640  RETURN
700  REM *BLINK PINK*
710  X=3
720  Y=22
730  Z=140
740  RETURN
800  REM * BLINK BLUE*
810  X=3
820  Y=20
830  Z=116
850  RETURN
900  REM *DRAW KNOBS*
905  PLOT X,Y,Z
910  PLOT 19+U,2+R,Z
915  SOUND 11;1,14;1,19;1
920  U=U+2
925  G=G+1
928  G(G)=Z
929  A(K)=9
930  IF JOY(2)>0THEN930
940  GOSUB 200
945  IF U = 8 THEN 1000
950  GOTO 140
1000 REM *EXAMINE GUESS*
1020 B=0
1030 W=0
1040 FOR N = 1 TO 4
1050 FOR X = 1 TO 4
1060 IF G(N)=S(X) THEN GOSUB 1100
1070 NEXT X
1080 NEXT N
1090 GOTO 1200
1100 IF X = N THEN B = B + 1
1110 IF X <> N THEN W = W + 1
1120 RETURN
1200 REM *DRAW PEGS*
1210 X=0
1220 IF B = 0 THEN 1300
1230 FOR N = 1 TO B
1240 PLOT 27+X,2+R,150
1245 SOUND 23;0,26;0,31;0
1250 X=X+1
1260 NEXT N
1270 IF B = 4 THEN 9000
1300 IF W = 0 THEN 100
1310 FOR N = 1 TO W
1320 PLOT 27+X,2+R,158
1325 SOUND 26;0
1330 X=X+1
1340 NEXT N
1350 GOTO100
6000 REM *SELECT KNOBS*
6005 DIM S(4)
6010 FOR N = 1 TO 4
6020 S=RND(6)+I
6025 Q=0
6030 FOR X = 1 TO 4
6040 IF S = S(X) THEN Q=99
6050 NEXT X
6055 IF Q = 99 THEN 6020
6060 S(N)=S
6070 NEXT N
6100 FOR N = 1 TO 4
6110 IF S(N)=1 THEN S(N)=100
6120 IF S(N)=2 THEN S(N)=108
6130 IF S(N)=3 THEN S(N)=124
6140 IF S(N)=4 THEN S(N)=132
6150 IF S(N)=5 THEN S(N)=140
6160 IF S(N)=6 THEN S(N)=116
6170 NEXT N
6180 RETURN
7000 REM *ESTABLISH COLOURED KNOBS*
7010 FOR N = 100 TO 140 STEP 8
7020 CHAR N,3C7EFFFFFFFF7E3C
7030 NEXT N
7050 COLOR 13,9,2 REM RED (100)
7060 COLOR 14,16,2 REM WHITE (108)
7070 COLOR 15,5,2 REM BLUE (116)
7080 COLOR 16,13,2 REM GREEN (124)
7090 COLOR 17,11,2 REM YELLOW (132)
7100 COLOR 18,14,2 REM PINK (140)
7200 REM *ESTABLISH B/W PEGS*
7205 FOR N = 150 TO 158 STEP 8
7210 CHAR N,003C1818181818
7220 NEXT N
7240 COLOR 19,2,13
7250 COLOR 20,16,13
7300 RETURN
7500 REM *DRAW BOARD*
7510 CHAR 16,1818181818181818
7520 CHAR 17,000000FFFF
7530 CHAR 18,0000001F1F181818
7540 CHAR 19,000000F8F8181818
7550 CHAR 20,1818181F1F
7560 CHAR 21,181818F8F8
7570 CHAR 22,1818181F1F181818
7580 CHAR 23,181818F8F8181818
7582 CHAR 24,181818FFFF
7584 CHAR 25,000000FFFF181818
7585 CHAR 26,181818FFFF181818
7586 COLOR 3,10,2
7587 COLOR 4,10,2
7588 GOSUB 7785
7600 FOR Y = 1 TO 23 STEP 2
7605 FOR X = 19 TO 30
7610 PLOT X,Y,17
7620 NEXT X
7630 NEXT Y
7640 FOR N = 19 TO 25
7650 PLOT N,3,17
7660 NEXT N
7700 FOR N = 2 TO 22
7710 PLOT 18,N,16
7720 PLOT 31,N,16
7725 PLOT 26,N,16
7730 NEXT N
7735 FOR Y = 3 TO 21 STEP 2
7738 PLOT 26,Y,26
7740 PLOT 18,Y,22
7742 PLOT 31,Y,23
7745 NEXT Y
7750 PLOT 18,1,18
7760 PLOT 31,1,19
7770 PLOT 18,23,20
7780 PLOT 31,23,21
7782 PLOT 26,1,25
7783 PLOT 26,23,24
7784 GOTO 7900
7785 REM *DRAW GREEN STRIPES*
7786 V=R
7787 IF V = 0 THEN V = 20
7788 IF V > 20 THEN V = 20
7790 CHAR 120,FFFFFFFFFFFFFFFF
7792 CHAR 121,000000FFFFFFFFFF
7800 FOR Y = 4 TO V+2 STEP 2
7810 FOR X = 27 TO 30
7820 PLOT X,Y,120
7830 NEXT X
7840 NEXT Y
7850 RETURN
7900 REM *PRINT WIZZARD MIND*
7940 FOR X = 19 TO 30
7950 READ N
7960 PLOT X,2,N
7970 NEXT X
8000 REM*SELECTION*
8010 IF J = 99 THEN 8100
8020 FOR Y = 18 TO 22 STEP 2
8030 FOR X = 3 TO 17
8040 READ D
8050 PLOT X,Y,D
8060 NEXT
8070 NEXT
8080 J=99
8090 RETURN
8100 FOR N = 1 TO 45
8110 READ X
8120 NEXT
8130 RETURN
8200 REM *ARROW*
8210 COLOR 1,11,2
8220 CHAR 0,030F3FFFFF3F0F03
8230 CHAR 1,000000FFFF
8240 CHAR 2,03070EFEFE0E0703
8250 PLOT 27,2,0
8260 PLOT 28,2,1
8270 PLOT 29,2,1
8280 PLOT 30,2,2
8290 RETURN
8300 REM * REPLAY*
8310 FOR X = 3 TO 16
8320 READ N
8330 PLOT X,9,N
8340 NEXT
8350 FOR X = 3 TO 12
8360 READ N
8370 PLOT X,11,N
8380 NEXT
8390 RETURN
9000 REM *END*
9005 SOUND 23;7,26;7,31;7
9006 SOUND 7;7
9010 GOSUB 8200
9020 X=19
9030 FOR N = 1 TO 4
9040 PLOT X,2,S(N)
9050 IF N = 4 THEN 9080
9060 PLOT X+1,2,32
9070 X=X+2
9080 NEXT
9090 GOSUB 8300
9100 IF JOY(1)>0 THEN 9200
9110 IF JOY(2)>0 THEN 9200
9115 GOSUB 5
9120 GOTO 9100
9200 REM *NEW GAME*
9210 FOR Y = 9 TO 11 STEP 2
9220 FOR X = 3 TO 17
9230 PLOT X,Y,32
9240 NEXT
9250 NEXT
9260 GOSUB 6000
9270 RESTORE
9280 GOSUB 7900
9290 FOR Y = 4 TO R+2 STEP 2
9300 FOR X = 19 TO 25 STEP 2
9310 PLOT X,Y,32
9320 NEXT
9330 NEXT
9340 GOSUB 7785
9350 R=0
9360 GOTO 100
