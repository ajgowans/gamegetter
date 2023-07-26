10   REM *WIZZARD HANGMAN*
15   REM (WRITTEN BY WAYNE G RICHMOND)
18   REM (DECEMBER 1982)
19   REM
20   COLOR 0,16
30   GOSUB 9000
35   GOSUB 8000
40   DIM L(20)
50   Z = 31
100  REM *INPUT WORD*
110  GOSUB 9000
120  L$ = "****************************"
130  PRINT L$
140  PRINT"***   WIZZARD  HANGMAN   ***"
150  PRINT L$
160  PRINT
170  PRINT
180  PRINT
190  PRINT
200  PRINT"TYPE IN A WORD"
205  PRINT
210  PRINT"AND PRESS <RET'N>"
213  PRINT
215  PRINT
218  PRINT
220  PRINT"MAKE SURE THE PLAYER ISN'T"
230  PRINT
240  PRINT"LOOKING!!"
245  PRINT
250  PRINT
255  PRINT
260  PRINT
265  PRINT
270  INPUT W$
280  IF W$ = "" THEN 100
290  L = LEN(W$)
300  IF L > 13 THEN 100
310  GOSUB 9000
400  DATA 87,73,90,90,65,82,68
405  DATA 72,65,78,71,77,65,78
410  DATA 85,83,69
415  DATA 74,79,89,83,84,73,67,75,83
420  DATA 76,72,32,84,79,32
425  DATA 67,72,79,79,83,69
430  DATA 82,72,32,84,79,32
435  DATA 83,69,76,69,67,84
440  DATA 40,77,79,86,69,32
445  DATA 74,79,89,83,84,73,67,75,32
450  DATA 70,79,82,32
455  DATA 78,69,87,32
460  DATA 71,65,77,69,41
500  FOR Y = 2 TO 4 STEP 2
505  FOR X = 6 TO 12
510  READ D
515  PLOT X,Y,D
520  NEXT X
525  NEXT Y
530  FOR Y = 1 TO 5 STEP 4
535  FOR X = 5 TO 13
540  PLOT X,Y,42
545  NEXT X
550  NEXT Y
555  FOR X = 5 TO13 STEP 8
560  FOR Y = 2 TO 4
565  PLOT X,Y,42
570  NEXT Y
575  NEXT X
600  FOR X = 3 TO 5
605  READ D
610  PLOT X,8,D
620  NEXT
630  FOR X = 3 TO 11
635  READ D
640  PLOT X,10,D
650  NEXT
660  FOR Y = 13 TO 15 STEP 2
665  FOR X = 3 TO 14
670  READ D
675  PLOT X,Y,D
680  NEXT X
685  NEXT Y
700  REM *PLOT ALPHABET*
710  X = 4
720  FOR N = 65 TO 90
730  PLOT X,23,N
735  SOUND X-3;0
740  X = X + 1
750  NEXT
800  REM *PLOT DASHES*
810  X = 4
820  FOR N = 1 TO L
830  PLOT X,20,1
835  SOUND 2;0
840  X = X + 2
850  NEXT
1000 REM *MOVE POINTER*
1010 X = 4
1030 PLOT X,22,47
1050 IF X < 5 THEN 1090
1060 IF JOY(1) = 5 THEN 2000
1080 IF X > 28 THEN 1500
1090 IF JOY(1) = 1 THEN 3000
1500 IF JOY(2) > 0 THEN 4000
1510 GOTO 1050
2000 REM *MOVE POINTER LEFT*
2005 SOUND 2;0
2010 PLOT X,22,32
2020 X = X - 1
2030 PLOT X,22,47
2040 GOTO 1500
3000 REM *MOVE POINTER RIGHT*
3005 SOUND 2;0
3010 PLOT X,22,32
3020 X = X + 1
3030 PLOT X,22,47
3040 GOTO 1500
4000 REM *LOOK FOR LETTER*
4005 SOUND 31;0
4010 F = 0
4030 J = X + 61
4040 K = 99
4050 FOR N = 1 TO L
4060 IF L(N) = 99 THEN 4100
4070 IF MID$(W$,N,1) = CHR$(J) THEN GOSUB 5000
4100 NEXT
4110 IF K = 99 THEN 6000
4120 IF C = L THEN 7010
4130 F = 0
4150 GOTO 1030
5000 REM *MOVE LETTER INTO POSITION*
5005 K = 0
5010 Q = P
5015 C = C + 1
5020 Q = X
5030 P = 2 + N * 2
5040 IF F = 99 THEN 5090
5050 PLOT X,22,J
5055 PLOT X,23,32
5060 PLOT X,21,J
5070 PLOT X,22,47
5080 GOTO 5100
5090 X = Q
5100 IF X = P THEN 5400
5110 IF X < P THEN 5200
5120 IF X > P THEN 5300
5200 REM *MOVE LETTER RIGHT*
5210 FOR M = X TO P
5220 PLOT M,21,J
5230 PLOT M-1,21,32
5240 NEXT
5250 GOTO 5400
5300 REM *MOVE LETTER LEFT*
5310 FOR M = X TO P STEP -1
5320 PLOT M,21,J
5330 PLOT M+1,21,32
5340 NEXT
5350 GOTO 5400
5400 REM *MOVE LETTER UP*
5410 PLOT P,20,J
5420 PLOT P,21,32
5425 SOUND 2;0,21;0,26;0
5430 F = 99
5440 L(N) = 99
5450 X = 0
5460 RETURN
5600 GOSUB 5700
5610 V = 4
5620 FOR N = 1 TO L
5630 W = ASC(MID$(W$,N,1))
5640 PLOT V,20,W
5645 V = V + 2
5650 NEXT
5660 GOTO 7010
5700 SOUND 2;4,5;4,14;4
5710 SOUND 2;3,5;3,14;3
5720 SOUND 2;1,5;1,14;1
5730 SOUND 2;4,5;4,14;4
5740 SOUND 2;3,9;3,17;3
5750 SOUND 2;1,7;1,16;1
5752 SOUND 2;3,7;3,16;3
5754 SOUND 2;1,5;1,14;1
5760 SOUND 2;3,5;3,14;3
5770 SOUND 2;1,4;1,12;1
5780 SOUND 2;7,5;7,14;7
5790 RETURN
6000 REM *DRAW BODY*
6002 Z = Z - 2
6005 SOUND Z;6,Z-6;6
6010 W = W + 1
6020 IF W = 1 THEN 6210
6030 IF W = 2 THEN 6260
6040 IF W = 3 THEN 6300
6050 IF W = 4 THEN 6322
6060 IF H = 5 THEN 6340
6070 IF W = 6 THEN 6430
6080 IF W = 7 THEN 6490
6090 IF W = 8 THEN 6540
6100 IF W = 9 THEN 6580
6110 IF W = 10 THEN 6630
6210 N = 95
6220 FOR V = 13 TO 19
6230 N = N + 1
6240 PLOT V,18,N
6250 NEXT
6255 GOTO 4130
6260 FOR Y = 17 TO 2 STEP -1
6270 PLOT 16,Y,99
6280 NEXT
6290 GOTO 4130
6300 FOR V = 17 TO 24
6310 PLOT V,2,99
6320 NEXT
6321 GOTO 4130
6322 PLOT 17,5,104
6324 PLOT 17,4,103
6325 PLOT 18,4,104
6326 PLOT 18,3,103
6328 PLOT 19,3,104
6330 PLOT 23,2,248
6335 GOTO 4130
6340 PLOT 23,3,43
6345 N = 111
6350 FOR Y = 4 TO 6
6360 FOR V = 22 TO 24
6370 N = N + 1
6380 PLOT V,Y,N
6390 NEXT V
6400 NEXT Y
6410 PLOT 23,7,200
6420 GOTO 4130
6430 FOR Y = 8 TO 11
6440 FOR V = 22 TO 24
6460 PLOT V,Y,128
6470 NEXT V
6480 NEXT Y
6485 GOTO 4130
6490 FOR Y = 6 TO 8
6500 PLOT 19,Y,136
6510 NEXT
6520 PLOT 20,8,128
6530 PLOT 21,8,128
6535 GOTO 4130
6540 PLOT 25,8,128
6550 FOR Y = 8 TO 10
6560 PLOT 26,Y,136
6565 NEXT
6570 PLOT 27,10,128
6575 GOTO 4130
6580 FOR Y = 12 TO 16
6590 PLOT 22,Y,128
6600 NEXT
6610 PLOT 21,16,136
6620 GOTO 4130
6630 FOR Y = 12 TO 16
6640 PLOT 24,Y,128
6650 NEXT
6660 PLOT 25,16,136
6670 GOTO 5600
7010 GOSUB 8500
7015 PLOT X,22,32
7020 FOR X = 3 TO 30
7030 READ D
7040 PLOT X,23,D
7050 NEXT
7060 IF JOY(1) > 0 THEN RUN
7070 IF JOY(2) > 0 THEN RUN
7080 GOTO 7060
7999 GOTO7999
8000 REM *ESTABLISH CHARACTERS*
8010 CHAR 47,18181818FF7E3C18
8020 CHAR 1,000000000000FFFF
8030 CHAR 96,0000000000031FFF
8040 CHAR 97,0000010F7FFFFFFF
8050 CHAR 98,073FFFFFFFFFFFFF
8060 CHAR 99,FFFFFFFFFFFFFFFF
8070 CHAR 100,E0FCFFFFFFFFFFFF
8080 CHAR 101,000080F0FEFFFFFF
8090 CHAR 102,0000000000C0F8FF
8100 CHAR 103,0103070F1F3F7FFF
8110 CHAR 104,FFFEFCF8FOE0C08
8130 CHAR 112,8947289060408E9A
8140 CHAR 113,FC0300382C2AA191
8150 CHAR 114,2849915122943804
8160 CHAR 115,B6A0A8A79080808
8170 CHAR 116,8E80978F1C1A98
8180 CHAR 117,02010101010171F1
8190 CHAR 118,4020201010080403
8200 CHAR 119,01820404840C00FF
8210 CHAR 120,F9F9FA72220C708
8220 CHAR 200,7E3C7E3C7E3C7EFF
8230 CHAR 43,7A30307830307830
8250 CHAR 248,E7E7E7E7E7E7E7E7
8260 CHAR 128,FFFF0000FFFF
8270 CHAR 136,CCCCCCCCCCCCCCCC
8280 CHAR 144,FFFFFFFFFFFFFFFF
8300 RETURN
8500 REM *WINNING TUNE*
8510 SOUND 26;3
8520 SOUND 21;2
8530 SOUND 21;1
8540 SOUND 23;3
8550 SOUND 21;3
8560 SOUND 1;3
8570 SOUND 9;3,19;3,25;3
8580 SOUND 2;3,18;3,26;3
8590 RETURN
9000 REM *SET COLOURS*
9010 CLS
9020 FOR N = 5 TO 18
9030 COLOR N,2,16
9040 NEXT
9045 COLOR 6,7,1
9050 G = 11
9060 COLOR 13,G,1
9070 COLOR 14,G,1
9080 COLOR 32,G,7
9090 COLOR 17,14,11
9100 COLOR 18,14,11
9120 COLOR 26,7,1
9300 RETURN
9500 REM *NEW GAME?*
9510 PLOT X,22,32
9520 FOR X = 3 TO 30
9530 READ D
9540 PLOT X,23,D
9550 NEXT
9560 IF JOY(1) > 0 THEN RUN
9570 IF JOY(2) > 0 THEN RUN
9580 GOTO 9560
