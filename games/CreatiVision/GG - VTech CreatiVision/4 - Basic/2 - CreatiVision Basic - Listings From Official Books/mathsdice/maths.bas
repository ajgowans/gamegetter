1    REM*MATHS DICE*
2    REM*BY J.M.WALLACE*
3    COLOR0,2
5    GOSUB9000
7    GOSUB8000
10   PRINTTAB(6);"MATHS DICE"
11   PRINTTAB(6);"**********"
12   PRINTTAB(7);"********"
13   PRINT
14   PRINT
30   PRINT
40   PRINT"THIS PROGRAM GIVES PICTURES"
41   PRINT
42   PRINT"OF TWO DICE. WHEN TWO DICE"
43   PRINT
50   PRINT"AND AN EQUAL SIGN FOLLOWED"
51   PRINT
52   PRINT"BY A QUESTION MARK HAVE BEEN"
53   PRINT
60   PRINT"PRINTED, TYPE YOUR ANSWER"
61   PRINT
62   PRINT"AND PRESS <<RETURN>> KEY"
63   PRINT
64   PRINT
65   PRINT
70   FORM=1TO900
71   NEXTM
75   FORM=1TO100
76   NEXTM
80   CLS
110  D=RND(6)
120  J=(D*100)+1000
130  GOSUBJ
180  PLOT13,11,16
190  PRINT
200  E=RND(6)
210  K=(E*100)+2000
220  GOSUBK
500  T=D+E
510  PLOT13,18,17
520  INPUTX
530  IFX=TTHENGOTO590
540  PRINT"  NO, COUNT AGAIN"
541  PLOT26,23,19
542  SOUND29;6,23;6
550  INPUTY
560  IFY=TTHEN590
570  PRINT"NO, THE ANSWER IS  ";T
571  PLOT26,23,19
572  SOUND29;6,23;6
573  FORM=1TO100
574  NEXTM
580  GOTO600
590  PRINT"  RIGHT !!"
591  PLOT18,23,18
592  SOUND23;7,26;7,31;7
593  SOUND7;7
600  PRINT
601  PRINT"THE DICE ROLL AGAIN.."
610  GOTO75
1100 REM*DICE ONE,ONE*
1103 GOSUB4600
1105 GOSUB4000
1110 GOSUB4050
1115 GOSUB4100
1120 GOSUB4150
1125 RETURN
1200 REM*DICE ONE,TWO*
1203 GOSUB4600
1205 GOSUB4200
1210 GOSUB4250
1215 GOSUB4300
1220 GOSUB4350
1225 RETURN
1300 REM*DICE ONE,THREE*
1303 GOSUB4600
1305 GOSUB4200
1310 GOSUB4050
1315 GOSUB4100
1320 GOSUB4350
1325 RETURN
1400 REM*DICE ONE,FOUR*
1403 GOSUB4600
1405 GOSUB4400
1410 GOSUB4250
1415 GOSUB4300
1420 GOSUB4450
1425 RETURN
1500 REM*DICE ONE,FIVE*
1503 GOSUB4600
1505 GOSUB4400
1510 GOSUB4050
1515 GOSUB4100
1520 GOSUB4450
1525 RETURN
1600 REM*DICE ONE,SIX*
1603 GOSUB4600
1605 GOSUB4400
1610 GOSUB4500
1615 GOSUB4550
1620 GOSUB4450
1625 RETURN
2100 REM*DICE TWO,ONE*
2103 GOSUB5600
2105 GOSUB5000
2110 GOSUB5050
2115 GOSUB5100
2120 GOSUB5150
2125 RETURN
2200 REM*DICE TWO,TWO*
2203 GOSUB5600
2205 GOSUB5200
2210 GOSUB5250
2215 GOSUB5300
2220 GOSUB5350
2225 RETURN
2300 REM*DICE TWO,THREE*
2303 GOSUB5600
2305 GOSUB5200
2310 GOSUB5050
2315 GOSUB5100
2320 GOSUB5350
2325 RETURN
2400 REM*DICE TWO,FOUR*
2403 GOSUB5600
2405 GOSUB5400
2410 GOSUB5250
2415 GOSUB5300
2420 GOSUB5450
2425 RETURN
2500 REM*DICE TWO,FIVE*
2503 GOSUB5600
2505 GOSUB5400
2510 GOSUB5050
2515 GOSUB5100
2520 GOSUB5450
2525 RETURN
2600 REM*DICE TWO,SIX*
2603 GOSUB5600
2605 GOSUB5400
2610 GOSUB5500
2615 GOSUB5550
2620 GOSUB5450
2625 RETURN
4000 FORX=12TO15
4005 PLOTX,6,2
4010 NEXTX
4012 SOUND14;0
4015 RETURN
4050 PLOT12,7,2
4055 PLOT13,7,5
4060 PLOT14,7,6
4065 PLOT15,7,2
4068 SOUND15;0
4070 RETURN
4100 PLOT12,8,2
4105 PLOT13,8,9
4110 PLOT14,8,10
4115 PLOT15,8,2
4118 SOUND16;0
4120 RETURN
4150 FORX=12TO15
4155 PLOTX,9,2
4160 NEXTX
4162 SOUND17;0
4165 RETURN
4200 PLOT12,6,1
4205 PLOT13,6,2
4210 PLOT14,6,2
4215 PLOT15,6,2
4218 SOUND18;0
4220 RETURN
4250 FORX=12TO15
4255 PLOTX,7,2
4260 NEXTX
4262 SOUND19;0
4265 RETURN
4300 FORX=12TO15
4305 PLOTX,8,2
4310 NEXTX
4312 SOUND20;0
4315 RETURN
4350 PLOT12,9,2
4355 PLOT13,9,2
4360 PLOT14,9,2
4365 PLOT15,9,13
4368 SOUND21;0
4370 RETURN
4400 PLOT12,6,1
4405 PLOT13,6,2
4410 PLOT14,6,2
4415 PLOT15,6,3
4418 SOUND22;0
4420 RETURN
4450 PLOT12,9,12
4455 PLOT13,9,2
4460 PLOT14,9,2
4465 PLOT15,9,13
4468 SOUND23;0
4470 RETURN
4500 PLOT12,7,4
4505 PLOT13,7,2
4510 PLOT14,7,2
4515 PLOT15,7,7
4518 SOUND24;0
4520 RETURN
4550 PLOT12,8,8
4555 PLOT13,8,2
4560 PLOT14,8,2
4565 PLOT15,8,11
4568 SOUND25;0
4570 RETURN
4600 REM*DICE ONE,SIDE*
4605 PLOT11,5,96
4610 PLOT12,5,97
4615 PLOT13,5,98
4620 PLOT14,5,99
4625 PLOT15,5,104
4630 PLOT11,6,100
4635 PLOT11,7,101
4640 PLOT11,8,102
4645 PLOT11,9,112
4650 RETURN
5000 FORX=12TO15
5005 PLOTX,13,2
5010 NEXTX
5012 SOUND13;0
5015 RETURN
5050 PLOT12,14,2
5055 PLOT13,14,5
5060 PLOT14,14,6
5065 PLOT15,14,2
5068 SOUND12;0
5070 RETURN
5100 PLOT12,15,2
5105 PLOT13,15,9
5110 PLOT14,15,10
5115 PLOT15,15,2
5118 SOUND11;0
5120 RETURN
5150 FORX=12TO15
5155 PLOTX,16,2
5160 NEXTX
5162 SOUND10;0
5165 RETURN
5200 PLOT12,13,1
5205 PLOT13,13,2
5210 PLOT14,13,2
5215 PLOT15,13,2
5218 SOUND9;0
5220 RETURN
5250 FORX=12TO15
5255 PLOTX,14,2
5260 NEXTX
5262 SOUND8;0
5265 RETURN
5300 FORX=12TO15
5305 PLOTX,15,2
5310 NEXTX
5312 SOUND7;0
5315 RETURN
5350 PLOT12,16,2
5355 PLOT13,16,2
5360 PLOT14,16,2
5365 PLOT15,16,13
5368 SOUND6;0
5370 RETURN
5400 PLOT12,13,1
5405 PLOT13,13,2
5410 PLOT14,13,2
5415 PLOT15,13,3
5418 SOUND5;0
5420 RETURN
5450 PLOT12,16,12
5455 PLOT13,16,2
5460 PLOT14,16,2
5465 PLOT15,16,13
5468 SOUND4;0
5470 RETURN
5500 PLOT12,14,4
5505 PLOT13,14,2
5510 PLOT14,14,2
5515 PLOT15,14,7
5518 SOUND3;0
5520 RETURN
5550 PLOT12,15,8
5555 PLOT13,15,2
5560 PLOT14,15,2
5565 PLOT15,15,11
5568 SOUND2;0
5570 RETURN
5600 REM*DICE TWO,SIDE*
5605 PLOT11,12,96
5610 PLOT12,12,97
5615 PLOT13,12,98
5620 PLOT14,12,99
5625 PLOT15,12,104
5630 PLOT11,13,100
5635 PLOT11,14,101
5640 PLOT11,15,102
5645 PLOT11,16,112
5650 RETURN
8000 REM*ESTABLISH CHARACTERS*
8005 CHAR1,00001E3F3F3F3F1E
8010 CHAR2,0000000000000000
8015 CHAR3,000078FCFCFCFC78
8020 CHAR4,00000000001E3F3F
8025 CHAR5,0000000000030707
8030 CHAR6,0000000000C0E0E0
8035 CHAR7,000000000078FCFC
8040 CHAR8,3F3F1E0000000000
8045 CHAR9,0707030000000000
8050 CHAR10,E0E0C00000000000
8055 CHAR11,FCFC780000000000
8060 CHAR12,1E3F3F3F3F1E0000
8065 CHAR13,78FCFCFCFC780000
8070 CHAR16,181818FFFF181818
8075 CHAR17,00FFFF0000FFFF00
8080 CHAR96,0080C0E0F0F8FCFE
8085 CHAR97,0000000000000000
8090 CHAR98,0000000000000000
8095 CHAR99,0000000000000000
8100 CHAR104,FF7F3F1F0F070301
8105 CHAR100,FFFFFFFFFFFFFFFF
8110 CHAR101,FFFFFFFFFFFFFFFF
8115 CHAR102,FFFFFFFFFFFFFFFF
8120 CHAR112,FF7F3F1F0F070301
8122 CHAR18,6666001881C32418
8123 CHAR19,66660000003C6681
8125 RETURN
9000 REM*COLORS*
9010 CLS
9015 COLOR5,16,2
9020 COLOR6,5,2
9025 COLOR7,7,2
9026 COLOR8,8,2
9030 COLOR1,2,16
9035 COLOR2,2,16
9040 COLOR3,7,2
9045 COLOR9,11,2
9050 COLOR10,13,2
9055 COLOR11,14,2
9056 COLOR12,10,2
9060 COLOR13,6,15
9065 COLOR14,2,15
9070 COLOR15,6,2
9075 RETURN