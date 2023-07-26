30   INPUTA,B,C
40   S=A+B+C
50   S=0.5*S
60   P=S*(S-A)*(S-B)*(S-C)
70   A=SQR(P)
80   PRINT"AREA=";A
90   END