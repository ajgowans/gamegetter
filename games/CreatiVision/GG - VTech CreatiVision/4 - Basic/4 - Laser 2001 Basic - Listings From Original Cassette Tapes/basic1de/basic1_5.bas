10  GOSUB 500: FOR I = 1 TO 1000: NEXT 
20  GOSUB 1000: FOR I = 1 TO 2500: NEXT I
30  GOSUB 500: GOSUB 800
40  HOME : GOSUB 500: GOSUB 1000
50 T = 0:M = 0
55  GOSUB 1000
60  PRINT  TAB( 3);"ZEIT=";T,"PUNKTE=";M
70 I =  INT (91 **  RND (9))
73  IF I < 33 THEN 70
75 R$ =  CHR$ (I)
80  PRINT : PRINT  TAB( 3);"DRUECKEN SIE DIE TASTE:";R$
85  FOR X = 1 TO 40: NEXT X
90 T = T + 1: GET A$: IF A$ = R$ THEN 110
95  IF T = 300 THEN 120
100  GOTO 55
110 M = M + 1: GOTO 55
120  HOME : GOSUB 500: PRINT 
130  PRINT : PRINT : PRINT "ZEIT ZU ENDE!";
140  PRINT "IN 5 MINUTEN HABEN SIE"
150  PRINT M;" ZEICHEN GESCHRIEBEN!"
160  PRINT "DAS SIND ";M / 5;" ZEICHEN/MIN."
170  PRINT "ODER ";S / 25;" WORTE/MIN."
180  IF M < 500 THEN  PRINT "ES KANN BESSER WERDEN!": GOTO 220
190  IF M > 499 AND M < 1000 THEN  PRINT "GANZ GUT!": GOTO 220
200  IF M > 999 AND M < 1500 THEN  PRINT "SEHR GUT!": GOTO 220
210  PRINT 
220  PRINT : PRINT 
230  PRINT  TAB( 4);"NOCH EIN VERSUCH  (J=JA)";: INPUT A$
240  IF A$ = "J" OR A$ = "JA" THEN 20
250  GOTO 2000
500  HOME : PRINT : PRINT : PRINT :
510  PRINT  TAB( 6)"* LASER - 2001 *": PRINT 
520  PRINT  TAB( 6)"* TYPING TEACHER*"
530  RETURN 
800  HOME : PRINT : PRINT "BEDIEHNUNGSANLEITUNG (N=NEIN) ";A$
810  INPUT A$
815  IF A$ = "N" OR A$ = "NEIN" THEN  RETURN 
820  HOME : PRINT "DIESES PROGRAMM SOLL IHNEN"
830  PRINT "HELFEN, SICH AUF DER TASTATUR"
840  PRINT "IHRES LASER-COMPUTERS"
850  PRINT "SCHNELL ZURECHT ZUFINDEN.": PRINT 
860  PRINT "5 MINUTEN LANG GEBEN SIE"
870  PRINT "DIE IHNEN GEZEIGTEN ZEICHEN"
880  PRINT "MIT DEN TASTEN EIN.": PRINT 
890  PRINT "DANACH SAGT DER COMPUTERIHNEN,"
900  PRINT "WIE SCHNELL SIE SIND.": PRINT : PRINT 
910  PRINT  TAB( 4);"FERTIG ZUM START (J=JA) ";: INPUT A$
920  IF A$ = "J" OR A$ = "JA" THEN  RETURN 
930  GOTO 800
1000  HOME : PRINT 
1010  PRINT "*********************************"
1020  PRINT "*                               *"
1030  PRINT "*   1 2 3 4 5 6 7 8 9 0 : -     *"
1040  PRINT "*                               *"
1050  PRINT "*   Q W E R T Y U I O P RET     *"
1055  PRINT "*                               *"
1060  PRINT "* CTRL A S D F G H J K L ;      *"
1065  PRINT "*                               *"
1070  PRINT "*SHIFT Z X C V B N M , . / SHIFT*"
1075  PRINT "*                               *"
1080  PRINT "*              SPACE            *"
1090  PRINT "*                               *"
1100  PRINT "*********************************"
1110  RETURN 
2000  HOME : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT 
2010  PRINT  TAB( 4);"PROGRAMM-ENDE / KASSETTEN-ENDE"
2020  END 