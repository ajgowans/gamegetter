5    CLS
7    CHAR 63,0000003C003C
10   FOR N=17 TO 29
20   POKE 4210,N
30   NEXT
40   FOR N=170 TO 194
50   POKE 4214,N
60   NEXT
70   FOR N=205 TO 230
80   POKE 4322,N
90   NEXT
100  SOUND 0;0
1000 GOSUB 9000
1010 GOSUB 9800
1015 CLS
1020 A=0
1025 PRINT"WHICH SKILL LEVEL?"
1030 PRINT
1040 PRINT"   (A) VERY EASY"
1050 PRINT
1060 PRINT"   (B) INTERMEDIATE"
1070 PRINT
1080 PRINT"   (C) TOUGH"
1085 FOR N=1 TO 10
1086 PRINT
1087 NEXT
1090 IF PEEK(29)=1 THEN 1100
1095 GOTO 1090
1100 IF PEEK(25)=17 THEN A=7
1110 IF PEEK(25)=6  THEN A=15
1120 IF PEEK(18)=72 THEN A=40
1130 FOR N=1 TO 20
1140 PRINT
1150 NEXT
1160 IF A=0 THEN 1020
1500 REM SCREEN
1501 CHAR 180,FFC3A59999A5C3FF
1502 FOR N=22 TO 23
1503 FOR M=14 TO 24
1504 PLOT N,M,180
1505 NEXT
1507 NEXT
1510 FOR N=25 TO 27
1520 PLOT N,24,200
1530 NEXT
1540 FOR N=18 TO 20
1545 PLOT N,24,252
1546 NEXT
1550 PLOT 19,22,250
1555 PLOT 19,23,251
1580 POKE 219,208
1590 POKE 218,228
1600 PRINT"LET'S START BUILDING !"
1610 FOR N=1 TO 250
1620 NEXT
1630 POKE 218,228
1640 PRINT"                      "
1650 U=0
1800 REM QUESTION/ANSWER
1805 IF U=11 THEN GOSUB 4300
1810 B=RND(A)
1820 C=RND(A+5)
1830 POKE 219,208
1840 POKE 218,230
1850 PRINT B;" X ";C;
1860 INPUTT$
1861 IF LEN(T$)>4 THEN 1880
1862 IF T$="" THEN 1880
1863 FOR N=1 TO LEN(T$)
1864 S$=MID$(T$,N,1)
1865 R=ASC(S$)
1866 IF R<48 THEN Z=1
1867 IF R>57 THEN Z=1
1868 NEXT
1869 IF Z=1 THEN 1880
1870 D=VAL(T$)
1871 IF D=C*B THEN 2000
1880 SOUND 2;4,5;4,14;4
1890 SOUND 2;3,5;3,14;3
1900 SOUND 2;1,5;1,14;1
1910 SOUND 2;4,5;4,14;4
1911 SOUND 2;3,9;3,17;3
1912 SOUND 2;1,7;1,16;1
1913 SOUND 2;3,7;3,16;3
1914 SOUND 2;1,5;1,14;1
1915 SOUND 2;3,5;3,14;3
1916 SOUND 2;1,4;1,12;1
1917 SOUND 2;7,5;7;14;7
1918 Z=0
1920 FOR N=13 TO 23
1930 FOR M=25 TO 27
1950 PLOT M,N,32
1960 NEXT
1965 SOUND N;0
1970 NEXT
1975 U=0
1980 POKE 219,208
1985 POKE 218,228
1986 PRINT"OH WELL,LET'S START AGAIN   "
1987 FOR N=1 TO 300
1988 NEXT
1990 GOSUB 5000
1995 GOTO 1800
2000 REM
2005 IF U=11 THEN 4100
2010 GOSUB 3000+U*100
2020 GOSUB 5000
2030 U=U+1
2040 GOTO 1800
2500 FOR N = 1 TO 256
2510 POKE 4098,N
2520 FOR M=1 TO 20
2530 NEXT
2540 NEXT
3000 PLOT 25,23,96
3010 PLOT 26,23,97
3020 PLOT 27,23,98
3030 RETURN
3100 PLOT 25,22,104
3110 PLOT 26,22,105
3120 PLOT 27,22,106
3130 RETURN
3200 PLOT 25,21,107
3210 PLOT 26,21,107
3220 PLOT 27,21,107
3230 RETURN
3300 PLOT 25,20,108
3310 PLOT 26,20,109
3320 PLOT 27,20,108
3330 RETURN
3400 PLOT 25,19,108
3410 PLOT 26,19,110
3420 PLOT 27,19,108
3430 RETURN
3500 PLOT 25,18,113
3510 PLOT 26,18,112
3520 PLOT 27,18,113
3530 RETURN
3600 PLOT 25,17,113
3610 PLOT 26,17,114
3620 PLOT 27,17,113
3630 RETURN
3700 PLOT 25,16,111
3710 PLOT 26,16,111
3720 PLOT 27,16,111
3730 RETURN
3800 PLOT 25,15,120
3810 PLOT 26,15,108
3820 PLOT 27,15,121
3830 RETURN
3900 PLOT 25,14,122
3910 PLOT 26,14,124
3920 PLOT 27,14,123
3930 RETURN
3999 END
4000 PLOT 25,13,128
4010 PLOT 26,13,129
4020 PLOT 27,13,130
4030 RETURN
4100 FOR N=18 TO 20
4110 PLOT N,24,32
4111 NEXT
4119 PLOT 19,23,32
4120 PLOT 19,22,32
4125 FOR M=13 TO 24
4126 PLOT 22,M,32
4127 PLOT 23,M,32
4128 NEXT
4130 GOSUB 5000
4135 COLOR 26,7,5
4140 CHAR 200,FF7F7F7762
4145 POKE 219,210
4150 POKE 218,226
4155 POKE 4098,0
4160 FOR N=1 TO 24
4170 PRINT
4180 NEXT
4190 POKE 219,209
4200 POKE 218,68
4210 CHAR 2,C0A0904F300C03
4220 CHAR 3,000000F01010F0
4230 CHAR 4,030509F20C30C0
4240 CHAR 5,0000000F08080F
4250 PRINT"       WELL DONE"
4255 FOR N=2 TO 10
4256 POKE 4098,N
4260 FOR M=1 TO 20
4270 NEXT
4280 NEXT
4290 SOUND 0;0
4295 GOTO 6000
4299 END
4300 FOR N=1 TO 20
4305 POKE 218,100
4310 PRINT"DATA FOR LAUNCH"
4320 POKE 218,100
4330 PRINT"               "
4340 NEXT
4350 RETURN
5000 POKE 219,208
5010 POKE 218,228
5020 PRINT"                            "
5030 RETURN
6000 SOUND 26;3
6005 SOUND 21;2
6010 SOUND 21;1
6015 SOUND 23;3
6020 SOUND 21;3
6025 SOUND 1;3
6030 SOUND 9;3,19;3,25;3
6040 SOUND 2;3,18;3,26;3
6050 FOR N=1 TO 200
6060 NEXT
6065 PRINT
6070 PRINT"PRESS ANY KEY FOR NEW GAME"
6075 U=0
6080 FOR N=1 TO 10
6090 PRINT
6100 NEXT
6110 IF PEEK(29)=1 THEN 1000
6120 GOTO 6110
8000 FOR N=1 TO 255
8010 POKE 4098,N
8020 FOR M=1 TO 50
8030 NEXT
8040 NEXT
8999 END
9000 CLS
9001 CHAR  97,00FF5AA5FF
9002 CHAR 250,01010103030E1E3E
9003 CHAR 251,3E76F606060F0F0F
9004 CHAR   1,0081422418244281
9005 CHAR 252,FFFFFFFFFFFFFFFF
9006 CHAR  96,FF0F0F1F1F3F3F7F
9010 CHAR  97,FFFFFFFFFFFFFFFF
9020 CHAR  98,FFF0F0F8F8FCFCFE
9030 CHAR 104,FF0303030303
9040 CHAR 105,FFC3C3C3C3C3
9050 CHAR 106,FFC0C0C0C0C0
9060 CHAR 107,000000FFFFFFFFFF
9070 CHAR 108,00
9080 CHAR 109,00003C3C18181818
9090 CHAR 110,1800001C20180438
9100 CHAR 112,2424000024242424
9110 CHAR 113,00
9120 CHAR 114,000000000018243C
9125 CHAR 111,F0F0F0F00F0F0F0F
9130 CHAR 120,0F0F1F1F3F3F7FFF
9140 CHAR 121,F0F0F8F8FCFCFEFF
9150 CHAR 122,0F0F0F0F0F0F0F0F
9160 CHAR 123,F0F0F0F0F0F0F0F0
9170 CHAR 124,FFCFCFCFFFFFFFFF
9180 CHAR 128,0000000003030F0F
9195 CHAR 129,003C7EFFFFFFFFFF
9200 CHAR 130,00000000C0C0F0F0
9205 CHAR 200,0000FFA55AFF
9206 CHAR  95,3C7EFFFFFFFF7E3C
9210 RETURN
9800 COLOR 0,13
9810 COLOR 13,2,5
9820 COLOR 14,2,16
9830 COLOR 15,2,15
9835 COLOR 16,16,5
9840 COLOR 17,2,5
9845 COLOR 26,2,5
9846 COLOR 32,11,5
9850 FOR N=6 TO 12
9860 COLOR N,2,5
9870 NEXT
9877 COLOR 1,2,5
9880 COLOR 5,2,5
9885 COLOR 23,2,5
9900 RETURN
9997 POKE 4098,208
9998 POKE 4098,0
9999 POKE 4098,207