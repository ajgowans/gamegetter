1    GOTO7000
3    REM *BRETT ELLIOTT '83*
4    GOSUB9000
10   CLS
15   DATA76,79,83,84,32
16   DATA66,65,76,76
20   PRINT"****************************"
30   PRINT"* BRETT ELLIOTT'S MINI PUT *"
35   PRINT"****************************"
36   PRINT
37   PRINT
38   PRINT"THE 'POWER' RATING SHOWS HOW"
39   PRINT
40   PRINT"HARD YOU WILL HIT THE BALL."
41   PRINT
42   PRINT
43   PRINT"USE LEFT JOYSTICK."
44   PRINT
45   PRINT"PULL LEFT TO INCREASE IT"
46   PRINT
47   PRINT"AND RIGHT TO DECREASE IT"
48   PRINT
50   PRINT"PRESS ANY BUTTON TO HIT BALL."
52   PRINT
53   PRINT
54   PRINT"TRY NOT TO STOP IN THE SAND."
55   PRINT
58   PRINT"<PRESS RETURN TO BEGIN>"
60   IFPEEK(27)=9THEN100
70   GOTO60
100  PRINT"PLAYER    HOLE    POWER "
110  FORZ=1TO22
120  PRINT" "
130  NEXT
131  PLOT3,2,8
132  PLOT3,3,10
133  PLOT4,2,8
134  PLOT5,2,14
135  PLOT4,3,11
136  PLOT5,3,15
138  PLOT3,4,12
140  PLOT4,4,13
146  PLOT3,20,120
147  PLOT5,20,120
148  PLOT32,20,120
150  FORZ=1TO32
160  FORX=21TO24
170  PLOTZ,X,8
180  NEXT
190  NEXT
191  B=RND(10)+5
192  H=RND(10)+17
195  PLOT10,1,P
197  PLOT18,1,N
198  PLOT27,1,S
199  PLOTH+1,21,16
200  PLOTH,21,9
202  PLOTH+3,21,16
203  PLOTH-4,21,16
210  PLOTB,20,1
220  IFB>HTHEN260
221  CHAR144,2020202020202020
222  CHAR146,2020202070F0F060
225  CHAR145,2020202020202020
230  PLOTB-1,18,144
235  PLOTB-1,19,145
240  PLOTB-1,20,146
245  V=(B-1)
250  GOTO300
260  CHAR144,0404040404040404
262  CHAR146,040404040E0F0F06
264  CHAR145,0404040404040404
265  PLOTB+1,18,144
266  PLOTB+1,19,145
270  PLOTB+1,20,146
275  V=(B+1)
300  IFJOY(1)=5THENS=S+1
305  IFS>112THENS=104
310  IFJOY(1)=1THENS=S-1
315  IFS<104THENS=112
318  IFJOY(3)<>0THEN340
320  PLOT27,1,S
330  GOTO300
340  REM * SHOOT SHOT *
350  IFP=49THENO=O+1
351  IFP=50THENT=T+1
352  IFB>HTHEN400
353  IFB+(S-103)>32THEN300
355  CHAR144,4040404020202020
356  CHAR145,2020202010101010
357  CHAR146,080808080E0F0F06
358  SOUND2;0
359  FORZ=BTOB+(S-103)
360  PLOTZ,20,1
370  PLOTZ,20,0
375  NEXT
378  B=(Z-1)
379  IFB=(H+1)ORB=(H+3)ORB=(H-4)THEN800
380  PLOTB,20,1
385  IFB=HTHEN500
388  FORZ=17TO20
389  PLOTV,Z,0
390  NEXT
395  GOTO210
400  IFB-(S-103)<2THEN300
401  CHAR144,0202020204040404
402  CHAR145,0404040408080808
403  CHAR146,1010101070F0F060
404  SOUND2;0
405  FORZ=BTOB-(S-103)STEP-1
410  PLOTZ,20,1
420  PLOTZ,20,0
425  NEXT
430  B=(Z+1)
435  IFB=(H+1)ORB=(H+3)ORB=(H-4)THEN800
440  PLOTB,20,1
450  IFB=HTHEN500
455  FORZ=17TO20
456  PLOTV,Z,0
457  NEXT
460  GOTO210
500  PLOTH-2,18,83
501  PLOTH-1,18,85
502  PLOTH,18,78
503  PLOTH+1,18,75
505  SOUND31;0,27;0
507  FORZ=H-3TOH+3
508  PLOTZ,18,0
510  NEXT
511  FORZ=17TO20
512  PLOTV,Z,0
515  NEXT
522  PLOTH,21,8
523  PLOTB,20,0
524  PLOTH+1,21,8
525  PLOTH+3,21,8
526  PLOTH-4,21,8
530  P=P+1
540  IFP>50THEN600
550  GOTO191
600  P=49
610  N=N+1
620  IFN>57THEN700
650  GOTO191
700  PRINT"*****************************"
710  PRINT
715  PRINT
720  PRINT"YOU TWO HAVE FINISHED "
730  PRINT
740  PRINT"HERE ARE THE FINAL SCORES"
753  PRINT
760  PRINT
765  PRINT
770  PRINT"PLAYER 1     ";0;
772  IFO<TTHENPRINT" THE BEST !"
773  IFT<OTHENPRINT" "
774  PRINT
775  PRINT
778  PRINT"PLAYER 2     ";T;
779  IFT<OTHENPRINT" THE CHAMP !"
780  IFO<TTHENPRINT" "
783  PRINT
784  PRINT
785  PRINT
790  PRINT
792  PRINT"<RETURN FOR ANOTHER GAME>"
793  PRINT
794  PRINT
795  PRINT
796  PRINT"****************************"
798  IFPEEK(27)=9THEN3
799  GOTO798
800  REM * LOST BALL *
805  FORZ=110TO131
810  POKE4318,Z
820  NEXT
825  IFP=49THENO=O+5
826  IFP=50THENT=T+5
830  FORZ=(H-5)TOH+3
840  READD
850  PLOTZ,18,D
860  NEXT
870  RESTORE
872  FORZ=(H-5)TOH+3
873  PLOTZ,18,0
880  NEXT
882  FORZ=17TO20
883  PLOTV,Z,0
885  NEXT
890  GOTO522
7000 FORZ=110TO131
7010 POKE4318,Z
7020 NEXT
7030 FORZ=17TO29
7040 POKE4214,Z
7050 NEXT
7060 FORZ=205TO230
7070 POKE4322,Z
7080 NEXT
7100 GOTO4
9000 REM * SET COLORS CHARS *
9010 B=RND(10)+5
9015 CHAR2,B00770044F003443
9020 H=RND(10)+17
9030 P=49
9040 N=49
9050 S=104
9100 CHAR1,00000000183C3C18
9110 CHAR8,FFFFFFFFFFFFFFFF
9120 CHAR9,000000000081C3E7
9125 CHAR10,FFFFFFFFFEFDFBFF
9126 CHAR11,FFDFBF7EFEFCFCFA
9127 CHAR12,FFFFFFFFFFFEFCF0
9128 CHAR14,E0E0E1E6ECE0C080
9129 CHAR15,1008082824444088
9130 CHAR16,DF8E3803
9131 CHAR13,F0F474C5090A10E0
9135 CHAR104,0000000000000018
9136 CHAR105,00000000000000FF
9137 CHAR106,0000000000003CFF
9138 CHAR108,000000007EFFFFFF
9139 CHAR109,0000007EFFFFFFFF
9140 CHAR110,00003C7EFFFFFFFF
9141 CHAR111,003C7EFFFFFFFFFF
9142 CHAR112,3C7EFFFFFFFFFFFF
9143 CHAR107,00000000007EFFFF
9144 CHAR120,060408985838183C
9145 CHAR144,2020202020202020
9146 CHAR145,2020202020202020
9147 CHAR146,2020202070F0F060
9200 COLOR2,11,6
9210 COLOR,6
9220 COLOR1,16,6
9230 FORZ=5TO12
9240 COLORZ,16,6
9250 NEXT
9260 COLOR3,2,11
9270 COLOR14,16,6
9280 COLOR15,16,6
9290 COLOR16,11,6
9295 COLOR19,2,6
9999 RETURN
