10   REM *WIZZARD LETTER GUESSER*
20   REM (WRITTEN BY WAYNE G. RICHMOND)
30   REM (DECEMBER 1982)
50   GOSUB 8000
60   IF RND(1) < 1 THEN I = 1
1000 REM * INSTRUCTIONS*
1010 PRINT L$
1020 PRINT"* WIZZARD  LETTER  GUESSER *"
1030 PRINT L$
1040 PRINT
1050 PRINT"YOUR WIZZARD WILL THINK OF A"
1060 PRINT
1070 PRINT"LETTER AND YOU HAVE TO TRY"
1080 PRINT
1090 PRINT"TO GUESS IT."
1100 PRINT
1110 PRINT
1120 PRINT"YOU WILL BE TOLD IF YOUR"
1130 PRINT
1140 PRINT"GUESS IS"
1150 PRINT
1160 PRINTQ$;"TOO LOW";Q$;" OR ";Q$;"TOO HIGH";Q$
1170 PRINT
1200 PRINT" ABCDEFGHIJKLMNOPQRSTUVWXYZ"
1240 GOSUB 7000
1250 GOSUB 9000
1260 X = RND(26) + 64 + I
2000 REM *INPUT GUESSES*
2010 K = K + 1
2100 PRINT"GUESS #";K;
2110 INPUT G$
2115 G = ASC(G$)
2120 IF G = X THEN 3000
2130 IF G < X THEN 4000
2140 IF G > X THEN 5000
3000 REM *GUESS CORRECT*
3005 PRINT
3010 PRINT"CONGRATULATIONS!!"
3015 PRINT
3020 PRINT Q$;G$;Q$;" IS THE CORRECT ANSWER"
3030 PRINT
3040 PRINT"AND IT ONLY TOOK YOU"
3050 PRINT
3055 IF K = 1 THEN 3070
3060 PRINT K;" GUESSES!"
3065 GOTO 3080
3070 PRINT K;" GUESS!!"
3080 SOUND 31;0
3085 SOUND 26;0
3090 SOUND 31;0
3095 SOUND 26;0
3100 SOUND 19;7,23;7,31;7
3110 GOSUB 7000
3120 RUN
4000 REM *GUESS TOO LOW*
4010 PRINT"TOO LOW"
4020 PRINT
4025 SOUND 2;5
4030 GOTO 2000
5000 REM *GUESS TOO HIGH*
5010 PRINT"TOO HIGH"
5020 PRINT
5025 SOUND 31;5
5030 GOTO 2000
6999 END
7000 REM *PRESS JOYSTICK ROUTINE*
7010 PRINT
7020 PRINT L$
7030 PRINT"* MOVE JOYSTICK WHEN READY *"
7040 PRINT L$
7050 IF JOY(1) > 0 THEN RETURN
7060 IF JOY(2) > 0 THEN RETURN
7070 GOTO 7050
8000 REM *SET UP*
8005 COLOR 0,16
8010 GOSUB 9000
8020 L$ = "****************************"
8030 Q$ = CHR$(34)
8040 RETURN
9000 REM *CHANGE COLOURS*
9010 CLS
9020 FOR N = 7 TO 12
9030 COLOR N,2,1
9040 NEXT
9050 COLOR 6,7,1
9060 RETURN