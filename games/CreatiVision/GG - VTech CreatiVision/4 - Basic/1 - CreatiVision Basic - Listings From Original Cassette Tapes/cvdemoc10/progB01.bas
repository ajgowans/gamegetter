5    CLS
6    COLOR0,16
10   FORX=13TO17
15   COLORX,7,16
17   NEXT
20   CHAR104,1F3F7FFFF8F0F0F0
30   CHAR105,F0F0F0F8FF7F3F1F
40   CHAR106,F3FBFFFF7F3F3F3F
50   CHAR107,3F3F3F7FFFFFFBF3
60   CHAR108,F0F0F1F3FFFFFFFF
70   CHAR109,FFFFFFFFF3F1F0F0
80   CHAR100,F0F0F0F0F0F0E0C0
90   CHAR111,C0E0F0F0F0F0F0F0
91   PRINT"        TEK ELECTRONICS"
92   PRINT
93   PRINT
94   PRINT"            WELCOMES"
95   FORX=1TO10
96   PRINT
97   NEXT
98   PRINT"          ALEC GOODMAN"
99   FORX=1TO7
100  PRINT
101  NEXT
105  PLOT17,10,104
120  PLOT17,11,105
130  PLOT18,10,106
140  PLOT18,11,107
150  PLOT19,10,108
160  PLOT19,11,109
170  PLOT20,10,100
180  PLOT20,11,111
200  FORX=1TO24STEP3
205  PLOT2,X,104
210  NEXT
215  FORY=2TO24STEP3
220  PLOT2,Y,105
225  NEXT
230  FORX=1TO24STEP3
250  PLOT3,X,106
255  NEXT
260  FORY=2TO24STEP3
265  PLOT3,Y,107
270  NEXT
280  FORX=1TO24STEP3
285  PLOT4,X,108
290  NEXT
300  FORY=2TO24STEP3
310  PLOT4,Y,109
312  NEXT
315  FORX=1TO24STEP3
320  PLOT5,X,100
325  NEXT
330  FORY=2TO24STEP3
335  PLOT5,Y,111
340  NEXT
350  GOTO350
