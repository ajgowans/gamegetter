2    REM**THIS PROGRAM DRAWS           A RIGHT TRIANGLE**
5    CLS
6    CHAR1,0808080808080808
7    CHAR2,00000000000000FF
10   CHAR5,8040201O08040201
12   PRINT"HORIZONTAL STARTING POINT"
13   PRINT"(1 TO 32)";
15   INPUTA
16   PRINT
20   PRINT"VERTICAL STARTING POINT"
22   PRINT"(1 TO 24)";
25   INPUTB
28   PRINT
30   PRINT"DIAGONAL LENGTH";
35   INPUTC
40   CLS
50   FORL=0TOC
60   PLOTA+L,B+L,5
70   PLOTA,B+L,1
80   PLOTA+L,B+C,2
90   NEXTL
990  END