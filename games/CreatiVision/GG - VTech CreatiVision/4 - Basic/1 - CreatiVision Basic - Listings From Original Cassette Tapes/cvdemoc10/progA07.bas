2    REM---THIS PROGRAM DEALS        52 CARDS AT RANDOM
5    DIMA(100)
10   DATA1,2,3,4,5,6,7,8,9,10
11   DATA11,12,13,14,15,16,17,18,19,20
12   DATA21,22,23,24,25,26,27,28,29,30
13   DATA31,32,33,34,35,36,37,38,39,40
14   DATA41,42,43,44,45,46,47,48,49,50
15   DATA51,52
30   FORC=1TO52
32   READA(C)
35   NEXT
90   P=52
100  V=RND(52)+1
105  IFA(V)=0THEN100
110  PRINT" ";A(V);
120  A(V)=0
130  P=P-1
140  IFP<>0THEN100
150  PRINT"-----END OF DECK!!"
200  END