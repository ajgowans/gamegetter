10   REM*JOCK THE CLOCK BY J.M.WALLACE
20   COLOR 0,2
30   GOSUB 9000
40   GOSUB 8000
50   L$="***************************"
55   PRINT
60   PRINTL$
70   PRINT"**JOCK THE TEACHING CLOCK**"
75   PRINTL$
80   PRINT
85   PRINT
90   PRINT"JOCK THE CLOCK LIKES"
95   PRINT
100  PRINT"TO BE HAPPY. HE CAN ONLY"
105  PRINT
110  PRINT"BE HAPPY IF YOU TELL HIM"
115  PRINT
120  PRINT"-----THE RIGHT TIME-----"
125  PRINT
130  PRINT"JOCK WILL SHOW YOU A TIME"
135  PRINT
140  PRINT"AND YOU MUST TYPE IN"
145  PRINT
150  PRINT"THE ANSWER & PRESS <RETURN>"
155  PRINT
160  PRINT
165  FOR N=1 TO 500
170  NEXT N
175  GOSUB 9000
350  CLS
355  GOSUB 1000
360  GOSUB 2000
400  GOSUB 4000
600  B=RND(9)
610  IF B=1 THEN GOSUB 6100
615  IF B=2 THEN GOSUB 6150
620  IF B=3 THEN GOSUB 6200
625  IF B=4 THEN GOSUB 6250
630  IF B=5 THEN GOSUB 6300
635  IF B=6 THEN GOSUB 6350
640  IF B=7 THEN GOSUB 6400
645  IF B=8 THEN GOSUB 6450
650  IF B=9 THEN GOSUB 6500
665  PRINT"WHAT'S MY TIME<? O'CLOCK>";
695  INPUT H
700  IF H=B THEN GOSUB 7000
701  IF H=B THEN GOTO350
705  PRINT" NO,PLEASE TRY AGAIN ";
735  INPUT I
740  IF I=B THEN GOSUB 7000
742  IF I=B THEN GOTO 350
743  FOR Y=22 TO 23
744  FOR X=2 TO 30
745  PLOT X,Y,32
746  NEXT X
747  NEXT Y
748  PRINT"NO,MY TIME IS ";B;"  O'CLOCK"
750  FOR N=1 TO 200
755  NEXT N
770  GOTO 350
1000 REM*CLOCK ROUND SIDES*
1005 PLOT 18,6,96
1010 PLOT 19,6,97
1015 PLOT 20,7,98
1020 PLOT 21,7,99
1025 PLOT 21,8,100
1030 PLOT 22,9,101
1035 PLOT 22,10,102
1040 PLOT 22,11,103
1045 PLOT 22,12,104
1050 PLOT 22,13,105
1055 PLOT 21,14,106
1060 PLOT 21,15,107
1065 PLOT 20,15,108
1066 PLOT 20,16,1
1070 PLOT 19,16,109
1075 PLOT 18,16,110
1080 PLOT 15,16,111
1085 PLOT 14,16,112
1090 PLOT 13,16,113
1095 PLOT 13,15,114
1100 PLOT 12,15,115
1105 PLOT 12,14,116
1110 PLOT 11,13,117
1115 PLOT 11,12,118
1120 PLOT 11,11,119
1125 PLOT 11,10,120
1130 PLOT 11,9,121
1135 PLOT 12,8,122
1140 PLOT 12,7,123
1145 PLOT 13,7,124
1150 PLOT 14,6,125
1155 PLOT 15,6,126
1160 RETURN
2000 REM*CLOCK NUMBERS*
2005 PLOT 16,6,49
2010 PLOT 17,6,50
2015 PLOT 19,7,49
2020 PLOT 21,9,50
2025 PLOT 21,11,51
2030 PLOT 21,13,52
2035 PLOT 19,15,53
2040 PLOT 16,16,24
2045 PLOT 17,16,25
2050 PLOT 14,15,55
2055 PLOT 12,13,56
2060 PLOT 12,11,57
2065 PLOT 12,9,49
2070 PLOT 13,9,48
2075 PLOT 14,7,49
2080 PLOT 15,7,49
2085 RETURN
4000 REM*O'CLOCK*
4005 PLOT 16,8,128
4010 PLOT 17,8,129
4015 PLOT 16,9,130
4020 PLOT 17,9,131
4025 PLOT 16,10,130
4030 PLOT 17,10,131
4035 PLOT 16,11,134
4040 PLOT 17,11,135
4045 RETURN
6100 REM*1 O'CLOCK*
6105 PLOT 17,11,136
6110 PLOT 17,10,137
6115 PLOT 18,10,138
6120 PLOT 17,9,139
6125 PLOT 18,9,140
6130 RETURN
6150 REM*2 O'CLOCK*
6155 PLOT 17,11,141
6160 PLOT 17,10,142
6165 PLOT 18,10,143
6170 PLOT 19,10,144
6175 PLOT 18,11,145
6180 RETURN
6200 REM*3 O'CLOCK*
6205 PLOT 17,11,146
6210 PLOT 18,11,146
6215 PLOT 19,11,148
6220 RETURN
6250 REM*4 O'CLOCK*
6255 PLOT 17,11,194
6260 PLOT 18,11,149
6265 PLOT 18,12,150
6270 PLOT 17,12,151
6275 PLOT 19,12,151
6280 RETURN
6300 REM*5 O'CLOCK*
6305 PLOT 17,11,153
6310 PLOT 17,12,154
6315 PLOT 17,13,155
6320 PLOT 18,13,156
6325 PLOT 16,11,157
6330 RETURN
6350 REM*6 O'CLOCK*
6355 PLOT 16,11,130
6360 PLOT 17,11,131
6365 PLOT 16,12,130
6370 PLOT 17,12,131
6375 PLOT 16,13,163
6380 PLOT 17,13,164
6385 RETURN
6400 REM*7 O'CLOCK*
6405 PLOT 15,13,165
6410 PLOT 16,13,166
6415 PLOT 15,12,167
6420 PLOT 16,12,168
6425 PLOT 16,11,169
6430 RETURN
6450 REM*8 O'CLOCK*
6455 PLOT 14,12,170
6460 PLOT 15,12,171
6465 PLOT 15,11,172
6470 PLOT 16,12,173
6475 PLOT 16,11,174
6480 RETURN
6500 PLOT 14,11,175
6505 PLOT 15,11,146
6510 PLOT 16,11,177
6515 RETURN
7000 REM*CORRECT ANSWER*
7002 IF H=B THEN Y=7
7004 IF I=B THEN Y=6
7010 PLOT 19,Y+6,8
7015 PLOT 18,Y+6,9
7020 PLOT 18,Y+7,10
7025 PLOT 17,Y+7,11
7030 PLOT 16,Y+7,12
7035 PLOT 15,Y+7,13
7040 PLOT 15,Y+6,14
7045 PLOT 14,Y+6,15
7055 PLOT 13,Y,16
7060 PLOT 14,Y,17
7065 PLOT 19,Y,18
7070 PLOT 20,Y,19
7075 PRINT"RIGHT,YOU MAKE ME HAPPY !!"
7076 FOR N=1 TO2
7077 SOUND 20;3,11;3
7078 SOUND 16;3,8;3
7079 SOUND 18;3,9;3
7080 SOUND 11;5,4;5
7082 SOUND 16;3,8;3
7084 SOUND 18;3,9;3
7086 SOUND 20;3,11;3
7088 SOUND 16;5,8;5
7090 NEXT
7092 PRINT
7095 PRINT"NOW COUNT THE TIME WITH ME"
7096 FOR N=1 TO 100
7097 NEXT N
7100 FOR S=1 TO B
7105 SOUND 19;5,23;6,26;7
7110 NEXT S
7114 PRINT
7159 PRINT
7160 PRINT"NOW HERE'S ANOTHER FACE "
7165 FOR N=1 TO20
7170 NEXT N
7200 RETURN
8000 REM*CHARACTERS*
8005 CHAR 1,FFFFFFFFFFFFFFFF
8010 CHAR 24,010307070C0C0603
8015 CHAR 25,E00000C0602060C0
8020 CHAR 96,00C0FCFFFFFFFFFF
8025 CHAR 97,00000080E0F8FEFF
8030 CHAR 98,C0E0F8F8FEFEFFFF
8035 CHAR 99,0000000000008080
8040 CHAR 100,C0E0F0F0F8FCFCFE
8045 CHAR 101,000000808080C0C0
8050 CHAR 102,C0E0E0E0E0E0F0F0
8055 CHAR 103,F0F0F0F0F0F0F0F0
8060 CHAR 104,F0F0F0E0E0E0E0C0
8065 CHAR 105,C0C0C08080800000
8070 CHAR 106,FEFEFCF8F8F0E0C0
8075 CHAR 107,C000000000000000
8080 CHAR 108,FFFFFFFCFCF0F0C0
8085 CHAR 109,FFFEF8F080000000
8090 CHAR 110,FFFFFFFFFFFCF000
8095 CHAR 111,FFFFFFFFFF7F0F00
8100 CHAR 112,FF7F3F0F03000000
8105 CHAR 113,0100000000000000
8110 CHAR 114,FFFFFF7F3F0F0F03
8115 CHAR 115,0300000000000000
8120 CHAR 116,7F3F3F1F0F0F0F03
8125 CHAR 117,0303010101000000
8130 CHAR 118,0F0F070707070703
8135 CHAR 119,0F0F0F0F0F0F0F0F
8140 CHAR 120,0307070707070F0F
8145 CHAR 121,0000000101030303
8150 CHAR 122,03070F1F1F3F3F7F
8155 CHAR 123,0000000000000003
8160 CHAR 124,03071F1F7FFFFFFF
8165 CHAR 125,00000001071F7FFF
8170 CHAR 126,00073FFFFFFFFFFF
8175 CHAR 128,0103030303030303
8180 CHAR 129,80C0C0C0C0C0C0C0
8185 CHAR 130,0303030303030303
8190 CHAR 131,C0C0C0C0C0C0C0C0
8205 CHAR 134,0303030303000000
8210 CHAR 135,C0C0C0C000000000
8215 CHAR 136,F0F0E0E0C0000000
8220 CHAR 137,CFCFDFFEFEFCFCF8
8225 CHAR 138,8080000000000000
8230 CHAR 139,C0C0C0C1C1C3C3C7
8235 CHAR 140,000000C0E0E0C0C0
8240 CHAR 141,FFFFFEF8F0C00000
8245 CHAR 142,C0C0C0C0C0C1C3CF
8250 CHAR 143,00030F1F7FFFFCF0
8255 CHAR 144,0080C0C080000000
8260 CHAR 145,C080000000000000
8265 CHAR 146,0000FFFFFFFF0000
8275 CHAR 148,0000E0F0F0E00000
8280 CHAR 194,C0C0C0E0F8FE7F3F
8285 CHAR 149,00000000000080C0
8290 CHAR 150,F0FCFF7F1F0F0300
8295 CHAR 151,0F03010000000000
8300 CHAR 152,00000080C0C08000
8305 CHAR 153,C0C0C0C0E0E0F0F0
8310 CHAR 154,F87C7C3E1E1F0F0F
8315 CHAR 155,0707030101000000
8320 CHAR 156,80C0E0E0E0C00000
8325 CHAR 157,0303030303010100
8350 CHAR 163,0303030303030301
8355 CHAR 164,C0C0C0C0C0C0C080
8360 CHAR 165,0103070707030000
8365 CHAR 166,E0C0C08080000000
8370 CHAR 167,0000000000000001
8375 CHAR 168,1F1E3C7C78F8F0F0
8380 CHAR 169,0303030307070F0F
8385 CHAR 170,0000000107070301
8390 CHAR 171,0F3FFFFEF8E0C000
8395 CHAR 172,0000000000000103
8400 CHAR 173,F0C0800000000000
8405 CHAR 174,030303071F7FFEFC
8410 CHAR 175,0000070F0F070000
8420 CHAR 177,0303FFFFFFFF0000
8570 CHAR 8,0000E02000000000
8575 CHAR 9,000003070E0C0C18
8580 CHAR 10,103060E080000000
8585 CHAR 11,0000000007FFF000
8590 CHAR 12,00000000E0FF0F00
8595 CHAR 13,080C060701000000
8600 CHAR 14,0000C0E070303018
8605 CHAR 15,0000070400000000
8610 CHAR 16,0738618383413807
8615 CHAR 17,F008C4E2E2C20CF0
8620 CHAR 18,0F1023474743300F
8625 CHAR 19,E01C86C1C1821CE0
8630 RETURN
9000 CLS
9010 COLOR 1,16,2
9015 FOR N=4 TO 8
9020 COLOR N,13,2
9025 NEXT
9030 FOR N=9 TO 12
9035 COLOR N,12,2
9040 NEXT
9045 FOR N=13 TO 16
9050 COLOR N,2,16
9055 NEXT
9060 COLOR 17,16,2
9065 FOR N=18 TO 27
9070 COLOR N,16,2
9075 NEXT
9090 COLOR 2,7,2
9095 COLOR 3,5,2
9100 RETURN
