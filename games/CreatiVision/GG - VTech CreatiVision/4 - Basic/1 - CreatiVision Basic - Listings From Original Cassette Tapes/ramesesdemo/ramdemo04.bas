5    REM COLOR DEMO 2
7    CLS
10   PRINT"YOU MAY CHANGE"
15   PRINT
20   PRINT"THE COLOR OF"
22   PRINT
25   PRINT"ALL CHARACTERS"
27   PRINT
30   PRINT"& THE BACKGROUND."
35   FOR I=1 TO 10
45   PRINT
47   NEXT
50   FOR I=1 TO 200
52   NEXT
55   CLS
60   PRINT"TYPE IN THE COLOR"
70   PRINT"CODE ACCORDING TO"
80   PRINT"THE LIST:"
90   PRINT"1=TRANSPARENT"
100  PRINT"2=BLACK"
110  PRINT"3=MEDIUM GREEN"
120  PRINT"4=LIGHT GREEEN"
130  PRINT"5=DARK BLUE"
140  PRINT"6=LIGHT BLUE"
150  PRINT"7=DARK RED"
160  PRINT"8=CYAN"
170  PRINT"9=MEDIUM RED"
180  PRINT"10=LIGHT RED"
190  PRINT"11=DARK YELLOW"
200  PRINT"12=LIGHT YELLOW"
210  PRINT"13=DARK GREEN"
215  PRINT"14=MAGENTA"
217  PRINT"15=GREY"
220  PRINT"16=WHITE"
300  PRINT
310  PRINT"COLOR CODE FOR"
320  PRINT"CHARACTER(C)"
330  INPUTC
332  IFC<17 THEN340
335  GOTO355
340  PRINT"BACKGROUND(B)"
350  INPUTB
352  IFB<17THEN360
355  PRINT"ILLEGAL INPUT!"
357  GOTO50
360  CLS
365  COLOR0,B
375  FORJ=5TO12
380  COLORJ,C,B
390  NEXT
400  PRINT"   DO YOU WANT"
410  PRINT"  CHANGE OF COLOR?"
420  PRINT"(Y=YES, N=NO)"
430  INPUT A$
440  IFA$="Y"THEN462
450  IFA$="N" THEN 475
460  GOTO400
462  CLS
463  FORI=5TO12
464  COLORI,C,B
466  NEXT
468  GOTO60
475  CLS
479  COLOR0,2
480  FORM=5TO12
485  COLORM,4,2
490  NEXT
495  PRINT"HERE COMES THE NEXT PROGRAM."
500  CRUN
