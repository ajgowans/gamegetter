10  HOME : PRINT : PRINT : PRINT : PRINT : PRINT  TAB( 10);"STOP THE TAPE": GOSUB 2000
20  FOR I = 1 TO 1000: NEXT I
25  HOME 
30  PRINT : PRINT : PRINT : PRINT 
40  PRINT  TAB( 7);"ANY INSTRUCTION (N=NO) ";: INPUT Y$
50  IF Y$ = "NO" OR Y$ = "N" THEN 840
120  HOME 
130  PRINT  TAB( 10);"* MATH FUN *": PRINT 
160  PRINT "THIS IS A MATHEMATICAL PRACTISING"
170  PRINT "GAME FOR PRE-SCHOOL PLAYER.  PLAYER HAS TO CHOOSE ONE OF THE FOUR "
180  PRINT "MATHEMATICAL OPERATOR  I.E. :"
190  PRINT "`1` FOR +,`2` FOR -, `3` FOR *, AND"
200  PRINT "`4` FOR /, AT START OF THE GAME."
201  PRINT "THEN THE COMPUTER WILL GENERATE TWO"
220  PRINT "NUMBERS FOR THE PLAYER TO CALCULATE"
240  PRINT "IN EACH ROUND. AFTER PLAYER ENTERED"
250  PRINT "COMPUTER WILL PRINT `YES` FOR"
260  PRINT "CORRECT ANSWER OR `NO` FOR WRONG"
265  PRINT "ANSWER.": PRINT 
270  PRINT "HIT -RETURN- TO CONTINUE ";: INPUT Y$
350  HOME : PRINT : PRINT "IF PLAYER`S ANSWER IS CORRECT,"
360  PRINT "HE WILL SCORE ONE POINT."
370  PRINT 
380  PRINT "GAME START WITH PLAYER`S SCORE"
390  PRINT "IS SET TO ZERO & ROUND COUNT TO"
400  PRINT "TEN. WHENEVER `?` PROMPTED IN THE"
410  PRINT "PICTURE IS FOR PLAYER TO INPUT "
420  PRINT "MATHEMATICAL OPERATOR OR TO INPUT"
510  PRINT "ANSWER."
520  PRINT 
530  PRINT "INPUT FOR MATHEMATICAL OPERATOR IS"
540  PRINT "DONE BY PRESS `1` FOR +, `2` FOR -"
550  PRINT "`3` FOR *, `4` FOR /."
600  PRINT : PRINT "HIT -RETURN- TO CONTINUE ";: INPUT Y$
630  HOME : PRINT : PRINT "INPUT FOR ANSWER IS DONE BY TYPE"
640  PRINT "IN ONE TO THREE NUMERIC KEY AND IS"
650  PRINT "COMPLETED BY PRESS -RETURN- KEY."
670  PRINT "BEFORE -RETURN- KEY IS PRESSED,"
680  PRINT "PLAYER CAN CHANGE THE LAST INPUT "
690  PRINT "ANSWER BY PRESS -SPACE- KEY, THEN"
700  PRINT "`?` WILL BE PROMPTED TO ASK FOR "
710  PRINT "ANOTHER INPUT."
720  PRINT 
730  PRINT "GAME FINISH WHEN PLAYER COMPLETED"
740  PRINT "HIS TURNS IN TEN ROUNDS."
750  PRINT 
770  PRINT "          *********": PRINT 
780  PRINT " HIT -RETURN- TO CONTINUE ";: INPUT Y$
840  HOME : PRINT : PRINT  TAB( 11);"* TO START * :": PRINT 
850  PRINT "PRESS PLAY BUTTON ON THE RECORDER"
860  PRINT "WHEN THE CURSOR STOP FLASHING."
870  PRINT 
890  PRINT "STOP THE RECORDER WHEN PICTURE"
900  PRINT "DISPLAY ON THE SCREEN & THE GAME"
910  PRINT "IS READY TO PLAY."
920  PRINT 
930  PRINT "IF INSTRUCTIONS ARE WANTED AT ANY"
940  PRINT "ONE TIME, REWIND THE TAPE TO THE "
950  PRINT "BEGINNERING & TYPE IN `CRUN`"
960  PRINT "COMMAND": SOUND (121,7,10)
1000  PRINT : CRUN 
2000  SOUND (121,1,10): RETURN 
