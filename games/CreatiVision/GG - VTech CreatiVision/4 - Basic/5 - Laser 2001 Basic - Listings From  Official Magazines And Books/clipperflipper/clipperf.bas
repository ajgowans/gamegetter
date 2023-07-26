10 REM *******************************
12 REM *       CLIPPER FLIPPER       *
14 REM *-----------------------------*
16 REM * LASER 2001 + li. JoyStick   *
18 REM * geSchrieben in LASERBRSIC   *
20 REM *-----------------------------*
22 REM * (c) 1984 by TronicSoft      *
24 REM               V.Becker        *
26 REM *******************************
28 REM
30 REM
100 DIM P%(5,6),B%(3,2),R%(5,6,2)
110 FOR I=1 TO 5 : FOR K=1 TO 6 : P%(I,K)=0 : NEXT K : NEXT I
120 B%(1,1)=28 : B%(1,2)=19 : B%(2,1)=27 : B%(2,2)=19 : B%(3,1)=27 : B%(3,2)=18
122 GOSUB 25000
125 G0SUB 41000
130 GOSUB 50000
135 PK=0
140 GOSUB 31000
145 CALL -1536
150 IF PEEK(24)=2 THEN 49000
160 GOTO 145
170 GOSUB 31000
180 COLOR=2,1
190 FOR I=72 TO 112 : UNPLOT 40,I TO 223,I
195 SOUND (272-I,1,15),(273-I,1,15 ),(271-I,1,15)
200 NEXT I
205 C=2
210 L=1 : Z=82
215 COLOR=C,1 : C=C+1 : IF C>13 THEN C= 2
220 FOR S=48 TO 208 STEP 48
230 FOR I=0 TO 5
240 ON L GOSUB 40700,40200,40100,40700
250 NEXT I
260 CALL -1536 : IF PEEK (24)>100 THEN 300
270 L=L+1 
280 NEXT S
290 GOTO 210
300 B%(1,1)=28 : B%(1,2)=19 : B%(2,1)=27 : B%(2,2)=19 : B%(3,1)=27 : B%(3,2)=18
310 GOTO 130
1000 BS=E : BZ=1
1010 S=BS : Z=BZ : GOSUB 51100
1015 IF BZ=22 THEN 11000
1016 IF BS=27 AND BZ=18 THEN GOSUB 50260 : GOTO 140
1017 CALL -1536 : IF PEEK(24)=0 THEN 1020
1018 IF PEEK(24)>100 THEN 1020
1019 GOSUB 12000
1020 BZ=BZ+1 : IF ((BZ+1)/4)=INT((BZ+1)/4) THEN 5000
1030 S=BS : Z=BZ : GOSUB 51000
1035 IF BZ>4 AND BZ<20 THEN IF ((BZ-2)/4)-INT((BZ-2)/4)=0 THEN GOSUB 32000 
1040 GOTO 1010
2000 S=BS : Z=BZ : GOSUB 51100
2015 IF BZ=1 THEN 9600
2016 IF BS=27 AND BZ=18 THEN 150
2017 CALL -1536 : IF PEEK(24)=0 THEN 2020
2018 IF PEEK(24)>100 THEN 2020
2019 GOSUB 12000
2020 BZ=BZ-1 : IF (BZ/4)=INT(BZ/4) THEN 15000
2030 S=BS : Z=BZ : GOSUB 51000
2035 IF BZ>4 AND BZ<20 THEN IF ((BZ-2)/4)-INT((BZ-2)/4)=0 THEN GOSUB 32000
2040 GOTO 2000
5000 ID=(BZ+1)/4
5010 IF (ID/2)=INT(ID/2) THEN 6000
5015 ET=(BS-2)/4-INT((BS-2)/4)
5020 I2=INT((BS-2)/4)+1
5030 GOTO 7000
6000 I2=INT((BS-4)/4)+1
6005 ET=(BS-4)/4-INT((BS-4)/4)
6010 GOTO 7000
7000 IF I2>6 THEN 1030
7005 SK=P%(ID,I2)
7010 ON SK GOTO 8000,8500,9000,9500
8000 IF ET=.25 THEN 1030
8005 IF BS=3 THEN 1030
8010 S=BS : Z=BZ : GOSUB 51000
8012 S=BS : Z=BZ : GOSUB 51100
8015 BS=BS-1
8020 S=BS : Z=BZ : GOSUB 51000
8030 S=BS : Z=BZ : GOSUB 51100
8040 BS=BS-1
8050 GOTO 1030
8500 IF ET=.25 THEN 1030
8510 S=R%(ID,I2,1) : Z=R%(ID,I2,2) : J=ID : I=I2 : GOSUB 55300
8520 GOTO 1030
9000 IF ET=.75 THEN 1030
9005 IF BS=27 THEN 1030
9010 S=BS : Z=BZ : GOSUB 51000
9012 S=BS : Z=BZ : GOSUB 51100
9015 BS=BS+1
9020 S=BS : Z=BZ : GOSUB 51000
9030 S=BS : Z=BZ : GOSUB 51100
9040 BS=BS+1
9050 GOTO 1030
9500 IF ET=.75 THEN 1030
9510 S=R%(ID,I2,1) : Z=R%(ID,I2,2) : J=ID : I=12 : GOSUB 55100
9520 GOTO 1030
9600 E=INT(RND(255)*27)
9610 IF E<3 THEN E=3
9620 IF INT(E/2)=E/2 THEN E=E+1
9630 IF E>27 THEN E=27
9640 FOR I=BS TO E STEP SGN(E-BS)
9650 S=I : Z=1 : GOSUB 51000
9660 S=I : Z=1 : GOSUB 51100
9670 NEXT I
9680 S=E : Z=1 : GOSUB 51000
9690 GOTO 1000
10000 FOR J=1 TO 5 : FOR I=1 TO 6
10010 S=R%(J,I,1) : Z=R%(J,I,2)
10020 SK=P%(J/I)
10030 ON SK GOSUB 55200,55300,55000,55100
10040 NEXT I : NEXT J
10050 RETURN
11000 IF BS=PF THEN 11500
11005 GOSUB 60000
11010 FOR I=3 TO 1 STEP -1
11020 IF B%(I,1)<>0 THEN B%(I,1)=0 : GOTO 11100
11030 NEXT I
11100 IF B%(1,1)=0 THEN 170
11101 ZI=PF : PF=BS : GOSUB 14200 : PF=ZI
11105 GOSUB 50260
11110 GOTO 140
11500 S=BS : Z=BZ : GOSUB 51000
11510 CALL -1536 : IF PEEK(24)>100 THEN GOSUB 10000
11515 SOUND (135,1,15)
11520 GOTO 2000
12000 JS=PEEK(24)/2
12010 IF JS>10 THEN 12500
12020 ON JS GOTO 12999,12030,12030,12999,12999,12999
12030 IF PF=25 THEN 12999
12040 GOSUB 14200 : PF=PF+2 : GOSUB 14100
12050 RETURN
12500 JS=JS-15
12510 ON JS GOTO 12520,12520,12999,12999,12520
12520 IF PF=3 THEN 12999
12530 GOSUB 14200 : PF=PF-2 : GOSUB 14100
12540 RETURN
12999 RETURN
14000 COLOR=1,1
14010 FOR I=3 TO 25 STEP 2
14020 S=8*I
14030 PLOT S, 160 TO S+1,180
14040 PLOT S+6,180 TO S+7,180
14050 PLOT S, 181 TO S+2,181
14060 PLOT S+5,181 TO S+7,181
14070 PLOT S, 182 TO S+7,182
14080 NEXT I
14082 PF=15 : GOSUB 14100
14090 RETURN
14100 COLOR=7,1
14110 PLOT PF*8,180 TO PF*8,182
14120 RETURN
14200 COLOR=1,1
14210 PLOT PF*8,180 TO PF*8,182
14220 RETURN
15000 ID=BZ/4
15010 IF(ID/2)=INT(ID/2) THEN 16000
15015 ET=(BS-2)/4-INT((BS-2)/4)
15020 I2=INT((BS-2)/4)+1
15030 GOTO 17000
16000 I2=INT((BS-4)/4)+1
16005 ET=(BS-4)/4-INT((BS-4)/4)
16010 GOTO 17000
17000 IF I2>6 THEN 2030
17005 SK=P%(ID,I2)
17010 ON SK GOTO 18500,18000,19500,19000
18000 IF ET=.25 THEN 2030
18005 IF BS=3 THEN 2030
18010 S=BS : Z=BZ : GOSUB 51000
18012 S=BS : Z=BZ : GOSUB 51100
18015 BS=BS-1
18020 S=BS : Z=BZ : GOSUB 51000
18030 S=BS : Z=BZ : GOSUB 51100
18040 BS=BS-1
18050 GOTO 1030
18500 IF ET=.25 THEN 2030
18510 S=R%(ID,I2,1) : Z=R%(ID,I2,2) : J=ID : I=I2 : GOSUB 55200
18520 GOTO 2030
19000 IF ET=.75 THEN 2030
19005 IF BS=27 THEN 2030
19010 S=BS : Z=BZ : GOSUB 51000
19012 S=BS : Z=BZ : GOSUB 51100
19015 BS=BS+1
19020 S=BS : Z=BZ : GOSUB 51000
19030 S=BS : Z=BZ : GOSUB 51100
19040 BS=BS+1
19050 GOTO 1030
19500 IF ET=.75 THEN 2030
19510 S=R%(ID,I2,1) : Z=R%(ID,I2,2) : J=ID : I=I2 : GOSUB 55000
19520 GOTO 2030
20000 UNPLOT 95,185 TO 98,185
20010 UNPLOT 94,186 TO 94,189
20020 UNPLOT 99,186 TO 99,189
20030 UNPLOT 95,190 TO 98,190
20040 UNPLOT 96,186 TO 97,186
20050 UNPLOT 96,189 TO 97,189
20060 UNPLOT 95,187 TO 95,188
20070 UNPLOT 102,185 TO 182,190
20080 UNPLOT 101,186
20090 UNPLOT 104,190 TO 107,190 TO 107,185 TO 104,185 TO 104,188 TO 107,188
20100 UNPLOT 109,185 TO 113,185 TO 113,190 TO 109,190 TO 109,185
20110 UNPLOT 109,187 TO 113,187
20120 UNPLOT 115,185 TO 115,188 TO 119,188
20130 UNPLOT 118,185 TO 118,190
20140 UNPLOT 121,185 TO 138,185
20150 UNPLOT 123,186 TO 123,190
20160 UNPLOT 125,187 TO 125,190
20170 UNPLOT 126,188
20171 UNPLOT 140,185
20172 UNPLOT 127,187 TO 128,187
20180 UNPLOT 130,187 TO 133,187 TO 133,190 TO 130,190 TO 130,187
20190 UNPLOT 135,187 TO 135,190
20200 UNPLOT 136,188
20210 UNPLOT 137,187 TO 138,187 TO 138,190
20220 UNPLOT 140,187 TO 140,190
20230 UNPLOT 144,187 TO 142,187 TO 142,190 TO 144,190
20240 UNPLOT 142,185 TO 144,185
20250 UNPLOT 157,185 TO 147,185 TO 147,188 TO 151,188 TO 151,190 TO 147,190
20260 UNPLOT 153,187 TO 156,187 TO 156,190 TO 153,190 TO 153,187
20270 UNPLOT 158,186 TO 158,190
20280 UNPLOT 160,185 TO 159,185
20290 UNPLOT 159,187
20300 UNPLOT 162,185 TO 162,190
20310 UNPLOT 161,187 TO 163,187
20320 RETURN
25000 GR
25005 COLOR=8,1
25010 FOR I=0 TO 7 : RECT(I,I),(255-I,191-I) : NEXT I
25020 FOR I=8 TO 15 : PLOT I,8 TO I,183
25030 PLOT 255-I,8 TO 255-I,183
25040 NEXT I
25045 GOSUB 20000
25050 RETURN
30000 UNPLOT S+1,1 TO S+5,1 TO S+5,6 TO S+1,6 TO S+1,1
30010 RETURN
30100 UNPLOT S+4,2 TO S+5,1 TO S+5,6
30110 RETURN
30200 UNPLOT S+1,1 TO S+5,1 TO S+5,4 TO S+1,4 TO S+1,6 TO S+5,6
30210 RETURN
30300 UNPLOT S+1,1 TO S+5,1 TO S+5,6 TO S+1,6
30310 UNPLOT S+3,3 TO S+5,3
30320 RETURN
30400 UNPLOT S+1,1 TO S+1,3 TO S+5,3
30410 UNPLOT S+4,1 TO S+4,6
30420 RETURN
30500 UNPLOT S+5,1 TO S+1,1 TO S+1,3 TO S+5,3 TO S+5,6 TO S+1,6
30510 RETURN
30600 UNPLOT S+5,1 TO S+1,1 TO S+1,6 TO S+5,6 TO S+5,3 TO S+2,3
30610 RETURN
30700 UNPLOT S+1,1 TO S+5,1 TO S+5,6
30710 RETURN
30800 UNPLOT S+1,1 TO S+5,1 TO S+5,6 TO S+1,6 TO S+1,1
30810 UNPLOT S+1,3 TO S+5,3
30820 RETURN
30900 UNPLOT S+1,6 TO S+5,6 TO S+5,1 TO S+1,1 TO S+1,4 TO S+5,4
30910 RETURN
31000 COLOR=10,1
31010 P$=STR$(PK)
31020 S=240-7*LEN(P$)
31030 L=VAL(MID$(P$,1,1))+1
31040 FOR I=1 TO 6 : PLOT S,I TO S+6,I
31050 NEXT I
31060 ON L GOSUB 30000,30100,30200,30300,30400,30500,30600,30700,30800,30900
31070 IF LEN(P$)<=1 THEN RETURN
31080 P$=RIGHT$(P$,LEN(P$)-1)
31090 GOTO 31020
32000 PK=PK+5
32010 SOUND(50,1,15)
32050 RETURN
40000 PLOT S+18+I,Z+5-I TO S+I,Z+5-I TO S+I,Z+23-I TO S+18+I,Z+23-I
40010 RETURN
40100 PLOT S+I,Z+5-I TO S+I,Z+23-I TO S+18+I,Z+23-I
40110 RETURN
40140 ON L GOSUB 40000,40100,40200,40300,40300,40400,40500
40200 PLOT S+9+I,Z+5-I TO S+9+I,Z+23-I 
40210 RETURN
40300 PLOT S+I,Z+23-I TO S+I,Z+5-I TO S+18+I,Z+5-I TO S+18+I,Z+14-I TO S+3+I,Z+14-I
40310 RETURN
40400 GOSUB 40600
40410 PLOT S+I,Z+23-I TO S+18+I,Z+23-I
40420 RETURN
40500 PLOT S+I,Z+23-I TO S+I,Z+5-I TO S+18+I,Z+5-I TO S+18+I,Z+14-I TO S+3+I,Z+14-I TO S+18+I,Z+23-I
40510 RETURN
40600 PLOT S+18+I,Z+5-I TO S+I,Z+5-I TO S+I,Z+23-I
40610 PLOT S+I,Z+14-I TO S+12+I,Z+14-I
40620 RETURN
40700 GOSUB 40200
40710 PLOT S+I,Z+5-I TO S+18+I,Z+5-I
40720 RETURN
41000 C=2
41010 L=1 : Z=64
41015 COLOR=C,1 : C=C+1 : IF C>13 THEN C=2
41020 FOR S=48 TO 208 STEP 24
41030 FOR I=0 TO 2
41040 ON L GOSUB 40000,40100,40200,40300,40300,40400,40500
41050 NEXT I
41060 CALL -1536 : IF PEEK(24)>100 THEN RETURN
41070 L=L+1
41080 NEXT S
41090 Z=104 : L=1
41115 COLOR=C,1 : C=C+1 : IF C>13 THEN C=2
41120 FOR S=48 TO 208 STEP 24
41130 FOR I=0 TO 2
41140 ON L GOSUB 40600,40100,40200,40300,40300,40400,40500
41150 NEXT I
41160 CALL -1536 : IF PEEK(24)>100 THEN RETURN
41170 L=L+1
41180 NEXT S
41185 FOR K=1 TO 4
41190 FOR I=140 TO 80 STEP -20
41200 SOUND(I,1,15),(I+2,1,15),(I-2,1,15)
41210 NEXT I
41215 NEXT K
41220 GOTO 41010
49000 VG=B%(1,1)
49005 IF VG=0 THEN 170
49010 COLOR=13,1
49020 FOR I=140 TO 159 : UNPLOT 232,I TO 239,I
49030 NEXT I
49040 FOR I=160 TO 163 : PLOT 232,I TO 239,I
49050 NEXT I
49055 SOUND(50,1,10),(60,2,10),(70,3,10),(1,4,10,1)
49060 FOR I=3 TO 1 STEP -1
49070 IF B%(I,1)<>0 THEN 49100
49080 NEXT I
49090 GOTO 170
49100 S=B%(I,1) : Z=B%(I,2) : GOSUB 51100
49110 S=29 : Z=19 : GOSUB 51000
49120 CALL -1536
49130 IF PEEK(24)=0 THEN 49150
49140 GOTO 49120
49150 COLOR=13,1
49155 FOR I=160 TO 163 : UNPLOT 232,I TO 239,I
49156 NEXT I
49160 FOR I=140 TO 144 : PLOT 232,I TO 239,I
49170 NEXT I
49180 PLOT 235,145 TO 235,184 TO 236,184 TO 236,145
49185 SOUND(1,1,15),(2,1,15),(3,1,15),(2,1,15,2)
49190 FOR I=16 TO 16 STEP -1
49200 S=29 : Z=I : GOSUB 51000
49210 S=29 : Z=I : GOSUB 51100
49220 NEXT I
49230 E=INT(RND(255)*27)
49240 IF E<3 THEN E=3
49250 IF INT(E/2)=E/2 THEN E=E+1
49260 IF E>27 THEN E=27
49270 FOR I=29 TO E STEP -1
49280 S=I : Z=1 : GOSUB 51000
49290 S=I : Z=1 : GOSUB 51100
49300 NEXT I
49320 S=E : Z=1 : GOSUB 51000
49330 GOTO 1000
50000 GR
50005 COLOR=10,1
50010 FOR I=0 TO 7 : RECT(I,I),(255-I,191-I) : NEXT I
50020 FOR I=8 TO 15 : PLOT I,8 TO I,183
50030 PLOT 255-I,8 TO 255-I,183
50040 NEXT I
50045 GOSUB 20000
50050 COLOR=2,1
50054 RESTORE
50055 FOR I=1 TO 5 : FOR K=1 TO 6 : READ A,B : NEXT K : NEXT I
50060 FOR RD=1 TO 44
50070 READ S,Z,L : S=S*8 : Z=Z*8 : L=L*8 : GOSUB 54000 : NEXT RD
50080 FOR I=160 TO 183 : PLOT 208,I TO 231,I
50090 NEXT I
50094 RESTORE
50100 FOR J=1 TO 5 : FOR I=1 TO 6
50110 READ S,Z
50115 R%(J,I,1)=S : R%(J,I,2)=Z
50120 X=INT(RND(255)*3.5+1)
50130 ON X GOSUB 55000,55100,55200,55300
54000 FOR J=0 TO 1
54010 PLOT S+J,Z+3 TO S+3+J,Z TO S+4-J,Z TO S+7-J,Z+4 TO S+7-J,Z+4+L TO S+4-J,Z+L+7 TO S+3+J,Z+7+L TO S+J,Z+3+L TO S+J,Z+3
54020 NEXT J
54030 PLOT S+3,Z TO S+3,Z+7+L TO S+4,Z+7+L TO S+4,Z
54040 RETURN
55000 COLOR=5,1
55010 S=8*S+3 : Z=8*Z+7
55015 UNPLOT S,Z TO S-11,Z-7 TO S+1,Z
55020 PLOT S,Z TO S+12,Z-7 TO S+1,Z
55022 SOUND (20,1,15),(40,1,15),(60,1,15),(2,1,15,3)
55025 P%(J,I)=1
55030 RETURN
55100 COLOR=8,1
55110 S=8*S+3 : Z=(Z-1)*8
55115 UNPLOT S,Z TO S-11,Z+7 TO S+1,Z
55120 PLOT S,Z TO S+12,Z+7 TO S+1,Z
55122 SOUND (20,1,15),(40,1,15),(60,1,15),(2,1,15,3)
55125 P%(J,I)=2
55130 RETURN
55200 COLOR=5,1
55210 S=8*S+3 : Z=8*Z+7
55220 UNPLOT S,Z TO S+12,Z-7 TO S+1,Z
55222 SOUND (20,1,15),(40,1,15),(60,1,15),(2,1,15,3)
55223 PLOT S,Z TO S-11,Z-7 TO S+1,Z
55225 P%(J,I)=3
55230 RETURN
55300 COLOR=8,1
55310 S=8*S+3 : Z=(Z-1)*8
55320 UNPLOT S,Z TO S+12,Z+7 TO S+1,Z
55324 PLOT S,Z TO S-11,Z+7 TO S+1,Z
55325 P%(J,I)=4
55326 SOUND (20,1,15),(40,1,15),(60,1,15),(2,1,15,3)
55330 RETURN
60000 SOUND (255,1,0),(255,1,0),(255,1,0),(1,1,0,1)
60001 SGEN 159,191,223,255
60002 SOUND (120,1,0),(150,1,0)
60005 FOR I=1 TO 10
60010 SGEN 50+20*I,I,20+10*I
60015 FOR K=1 TO 5*I : NEXT K
60020 NEXT I
60025 SOUND(255,1,0),(255,1,0),(255,1,0),(1,1,0,1)
60030 RETURN
62040 DATA 4,4,8,4,12,4,16,4,20,4,24,4,6,8,10,8,14,8,18,8,22,8,26,8,4,12,8,12,12,12,16,12,20,12,24,12
62050 DATA 6,16,10,16,14,16,18,16,22,16,26,16,4,20,8,20,12,20,16,20,20,20,24,20
63000 DATA 2,1,21,4,2,0,4,5,5,4,13,5,4,21,0,6,2,4,6,9,5,6,17,4,8,2,0,8,5,5,8,13,5,8,21,0
63010 DATA 10,2,4,10,9,5,10,17,4,12,2,0,12,5,5,12,13,5,12,21,0,14,2,4,14,9,5,14,17,4
63020 DATA 16,2,0,16,5,5,16,13,5,16,21,0,18,2,4,18,9,5,18,17,4,20,2,0,20,5,5,20,13,5,20,21,0
63030 DATA 22,2,4,22,9,5,22,17,4,24,2,0,24,5,5,24,13,5,24,21,0,26,2,4,26,9,5,26,17,5,28,2,16