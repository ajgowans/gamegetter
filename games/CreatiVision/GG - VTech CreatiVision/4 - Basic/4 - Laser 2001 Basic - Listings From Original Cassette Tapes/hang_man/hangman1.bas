5  REM  :HANGMAN              
10 X$ = "  H A N G M A N "
20  GOTO 5060
100  REM A
110  FOR I = 4 TO 12
112  PLOT X,Y + I TO X + 1,Y + I
114  PLOT X + 7,Y + I TO X + 8,Y + I
116  NEXT 
120  FOR I = 2 TO 6
122  PLOT X + I,Y + 6 TO X + I,Y + 7
126  NEXT 
130  PLOT X + 4,Y
132  PLOT X + 3,Y + 1 TO X + 5,Y + 1
134  PLOT X + 2,Y + 2 TO X + 3,Y + 2
136  PLOT X + 1,Y + 3 TO X + 2,Y + 3
138  PLOT X + 5,Y + 2 TO X + 6,Y + 2
140  PLOT X + 6,Y + 3 TO X + 7,Y + 3
150  RETURN 
200  REM  B
210  FOR I = 0 TO 12
212  PLOT X,Y + I TO X + 1,Y + I
216  NEXT 
220  FOR I = 2 TO 6
222  PLOT X + I,Y TO X + I,Y + 1
224  PLOT X + I,Y + 5 TO X + I,Y + 6
225  PLOT X + I,Y + 11 TO X + I,Y + 12
226  NEXT 
230  FOR I = 2 TO 4
232  PLOT X + 7,Y + I TO X + 8,Y + I
234  PLOT X + 7,Y + I + 5 TO X + 8,Y + I + 5
235  NEXT 
236  PLOT X + 7,Y + 10 TO X + 8,Y + 10
237  PLOT X + 7,Y + 1
238  PLOT X + 7,Y + 11
239  PLOT X + 7,Y + 5 TO X + 7,Y + 6
240  RETURN 
300  REM  C
310  PLOT X + 3,Y TO X + 7,Y
312  PLOT X + 3,Y + 1 TO X + 8,Y + 1
316  PLOT X + 1,Y + 2 TO X + 1,Y + 10
320  PLOT X + 2,Y + 1 TO X + 2,Y + 11
322  PLOT X + 3,Y + 11 TO X + 8,Y + 11
324  PLOT X + 3,Y + 12 TO X + 7,Y + 12
326  PLOT X + 8,Y + 1
328  PLOT X + 8,Y + 11
330  FOR I = 1 TO 2
332  PLOT X + 8,Y + I + 1 TO X + 9,Y + I + 1
334  PLOT X + 8,Y + I + 8 TO X + 9,Y + I + 8
336  NEXT 
338  RETURN 
400  REM   D
410  FOR I = 2 TO 10
412  PLOT X + 1,Y + I TO X + 2,Y + I
414  PLOT X + 8,Y + I TO X + 9,Y + I
416  NEXT 
420  FOR I = 1 TO 7
422  PLOT X + I,Y TO X + I,Y + 1
424  PLOT X + I,Y + 11 TO X + I,Y + 12
426  NEXT 
427  PLOT X + 8,Y + 1
428  PLOT X + 8,Y + 11
430  RETURN 
500  REM   E      
510  FOR I = 0 TO 6
512  PLOT X,Y + I
516  NEXT 
520  FOR I = 1 TO 4
522  PLOT X + I,Y
524  PLOT X + I,Y + 6
525  PLOT X + I,Y + 3
526  NEXT 
530  UNPLOT X + 4,Y + 3
538  RETURN 
600  REM  F      
610  FOR I = 0 TO 6
612  PLOT X,Y + I
616  NEXT 
620  FOR I = 0 TO 3
622  PLOT X + I,Y
624  PLOT X + I,Y + 3
626  NEXT 
630  PLOT X + 4,Y
638  RETURN 
700  REM   G      
710  FOR I = 2 TO 10
712  PLOT X,Y + I TO X + 1,Y + I
716  NEXT 
720  FOR I = 2 TO 9
722  PLOT X + I,Y TO X + I,Y + 1
724  PLOT X + I,Y + 11 TO X + I,Y + 12
726  NEXT 
728  PLOT X + 1,Y + 1
729  PLOT X + 1,Y + 11
730  FOR I = 5 TO 9
732  PLOT X + I,Y + 7 TO X + I,Y + 8
734  NEXT 
735  PLOT X + 8,Y + 9 TO X + 9,Y + 10
736  PLOT X + 8,Y + 10 TO X + 9,Y + 11
738  RETURN 
800  REM   H      
810  FOR I = 0 TO 12
812  PLOT X,Y + I TO X + 1,Y + I
814  PLOT X + 8,Y + I TO X + 9,Y + I
816  NEXT 
820  FOR I = 2 TO 7
824  PLOT X + I,Y + 6 TO X + I,Y + 7
826  NEXT 
828  RETURN 
900  REM   I
910  FOR I = 1 TO 8
912  PLOT X + I,Y TO X + I,Y + 1
914  PLOT X + I,Y + 11 TO X + I,Y + 12
916  NEXT 
920  FOR I = 1 TO 10
924  PLOT X + 4,Y + I TO X + 5,Y + I
926  NEXT 
928  RETURN 
1000  REM    J
1010  FOR I = 0 TO 5
1014  PLOT X + 4,Y + I
1016  NEXT 
1020  FOR I = 1 TO 3
1024  PLOT X + I,Y + 6
1026  NEXT 
1030  PLOT X,Y + 5
1038  RETURN 
1100  REM   K
1110  FOR I = 0 TO 6
1112  PLOT X,Y + I
1116  NEXT 
1120  FOR I = 1 TO 4
1122  PLOT X + I,Y + 4 - I
1124  PLOT X + I,Y + 2 + I
1126  NEXT 
1130  RETURN 
1200  REM    L
1210  FOR I = 0 TO 6
1212  PLOT X,Y + I
1216  NEXT 
1220  FOR I = 1 TO 4
1224  PLOT X + I,Y + 6
1226  NEXT 
1228  RETURN 
1300  REM    M
1310  FOR I = 0 TO 12
1312  PLOT X,Y + I TO X + 1,Y + I
1314  PLOT X + 8,Y + I TO X + 9,Y + I
1316  NEXT 
1318  PLOT X + 2,Y + 2 TO X + 2,Y + 4
1320  PLOT X + 3,Y + 4 TO X + 3,Y + 6
1321  PLOT X + 5,Y + 6 TO X + 5,Y + 8
1322  PLOT X + 4,Y + 6 TO X + 4,Y + 8
1324  PLOT X + 6,Y + 4 TO X + 6,Y + 6
1326  PLOT X + 7,Y + 2 TO X + 7,Y + 4
1328  RETURN 
1400  REM         N
1410  FOR I = 0 TO 12
1412  PLOT X,Y + I TO X + 1,Y + I
1414  PLOT X + 7,Y + I TO X + 8,Y + I
1416  NEXT 
1420  FOR I = 0 TO 6
1424  PLOT X + I + 1,Y + 3 + I TO X + I + 2,Y + I + 5
1426  NEXT 
1430  RETURN 
1500  REM      O 
1510  FOR I = 2 TO 10
1512  PLOT X + 1,Y + I TO X + 2,Y + I
1514  PLOT X + 8,Y + I TO X + 9,Y + I
1516  NEXT 
1520  FOR I = 3 TO 7
1522  PLOT X + I,Y TO X + I,Y + 1
1524  PLOT X + I,Y + 11 TO X + I,Y + 12
1526  NEXT 
1530  PLOT X + 2,Y + 1
1532  PLOT X + 2,Y + 11
1534  PLOT X + 8,Y + 1
1536  PLOT X + 8,Y + 11
1540  RETURN 
1600  REM    P 
1610  FOR I = 0 TO 6
1612  PLOT X,Y + I
1616  NEXT 
1620  FOR I = 1 TO 3
1622  PLOT X + I,Y
1624  PLOT X + I,Y + 3
1626  NEXT 
1630  PLOT X + 4,Y + 1
1634  PLOT X + 4,Y + 2
1638  RETURN 
1700  REM    Q 
1710  FOR I = 1 TO 4
1712  PLOT X,Y + I
1714  PLOT X + 4,Y + I
1716  NEXT 
1720  FOR I = 1 TO 2
1722  PLOT X + I,Y
1724  PLOT X + I,Y + 6
1726  NEXT 
1730  FOR I = 2 TO 4
1734  PLOT X + I,Y + 2 + I
1736  NEXT 
1740  PLOT X,Y + 5
1744  PLOT X + 3,Y
1748  RETURN 
1800  REM    R 
1810  FOR I = 0 TO 12
1812  PLOT X + 1,Y + I TO X + 2,Y + I
1816  NEXT 
1820  FOR I = 3 TO 7
1822  PLOT X + I,Y TO X + I,Y + 1
1824  PLOT X + I,Y + 6 TO X + I,Y + 7
1826  NEXT 
1832  FOR I = 2 TO 5
1834  PLOT X + 8,Y + I TO X + 9,Y + I
1836  NEXT 
1840  FOR J = 0 TO 3
1841  FOR I = 3 TO 5
1842  PLOT X + I,Y + J + 8
1843  NEXT I
1844 X = X + 1
1845  NEXT J
1846 X = X - 4
1847  PLOT X + 8,Y + 1
1848  PLOT X + 8,Y + 6
1849  PLOT X + 7,Y + 12 TO X + 8,Y + 12
1860  RETURN 
1900  REM         S 
1910  FOR I = 2 TO 6
1912  PLOT X + I,Y TO X + I,Y + 1
1914  PLOT X + I,Y + 5 TO X + I,Y + 6
1915  PLOT X + I,Y + 11 TO X + I,Y + 12
1916  NEXT 
1920  FOR I = 0 TO 1
1922  PLOT X + I,Y + 2 TO X + I,Y + 4
1924  PLOT X + I,Y + 9 TO X + I,Y + 10
1926  PLOT X + I + 7,Y + 7 TO X + I + 7,Y + 10
1928  PLOT X + I + 7,Y + 2 TO X + I + 7,Y + 3
1930  NEXT 
1932  PLOT X + 1,Y + 1
1934  PLOT X + 1,Y + 5
1936  PLOT X + 1,Y + 11
1938  PLOT X + 7,Y + 1
1940  PLOT X + 7,Y + 6
1942  PLOT X + 7,Y + 11
1944  PLOT X + 2,Y + 2
1946  PLOT X + 2,Y + 4
1948  PLOT X + 2,Y + 10
1950  PLOT X + 6,Y + 2
1952  PLOT X + 6,Y + 7
1954  PLOT X + 6,Y + 10
1960  RETURN 
2000  REM    T 
2010  FOR I = 0 TO 9
2012  PLOT X + I,Y TO X + I,Y + 1
2016  NEXT 
2020  FOR I = 2 TO 12
2022  PLOT X + 4,Y + I TO X + 5,Y + I
2026  NEXT 
2030  RETURN 
2100  REM     U 
2110  FOR I = 0 TO 10
2112  PLOT X + 1,Y + I TO X + 2,Y + I
2114  PLOT X + 8,Y + I TO X + 9,Y + I
2116  NEXT 
2117  PLOT X + 2,Y + 11
2120  FOR I = 3 TO 7
2124  PLOT X + I,Y + 11 TO X + I,Y + 12
2126  NEXT 
2127  PLOT X + 8,Y + 11
2128  RETURN 
2200  REM     V 
2210  FOR I = 0 TO 4
2212  PLOT X,Y + I
2214  PLOT X + 4,Y + I
2216  NEXT 
2220  PLOT X + 1,Y + 5
2222  PLOT X + 2,Y + 6
2224  PLOT X + 3,Y + 5
2230  RETURN 
2300  REM    W 
2310  FOR I = 0 TO 6
2312  PLOT X,Y + I
2314  PLOT X + 4,Y + I
2316  NEXT 
2320  PLOT X + 1,Y + 5
2322  PLOT X + 2,Y + 4
2324  PLOT X + 2,Y + 3
2325  PLOT X + 3,Y + 5
2328  RETURN 
2400  REM    X 
2410  PLOT X,Y
2412  PLOT X,Y + 6
2414  PLOT X + 4,Y
2415  PLOT X + 4,Y + 6
2420  FOR I = 0 TO 4
2422  PLOT X + I,Y + 1 + I
2424  PLOT X + I,Y + 5 - I
2426  NEXT 
2430  RETURN 
2500  REM    Y 
2510  FOR I = 0 TO 1
2512  PLOT X,Y + I
2514  PLOT X + 4,Y + I
2516  NEXT 
2520  FOR I = 3 TO 6
2524  PLOT X + 2,Y + I
2526  NEXT 
2530  PLOT X + 1,Y + 2
2534  PLOT X + 3,Y + 2
2538  RETURN 
2600  REM    Z 
2610  FOR I = 0 TO 4
2612  PLOT X + I,Y
2614  PLOT X + I,Y + 5 - I
2615  PLOT X + I,Y + 6
2616  NEXT 
2620  RETURN 
4000 A =  ASC (A$) - 64
4005  IF A =  - 32 THEN  RETURN 
4010  IF A = 1 THEN 100
4020  IF A = 2 THEN 200
4030  IF A = 3 THEN 300
4040  IF A = 4 THEN 400
4050  IF A = 5 THEN 500
4060  IF A = 6 THEN 600
4070  IF A = 7 THEN 700
4080  IF A = 8 THEN 800
4090  IF A = 9 THEN 900
4100  IF A = 10 THEN 1000
4110  IF A = 11 THEN 1100
4120  IF A = 12 THEN 1200
4130  IF A = 13 THEN 1300
4140  IF A = 14 THEN 1400
4150  IF A = 15 THEN 1500
4160  IF A = 16 THEN 1600
4170  IF A = 17 THEN 1700
4180  IF A = 18 THEN 1800
4190  IF A = 19 THEN 1900
4200  IF A = 20 THEN 2000
4210  IF A = 21 THEN 2100
4220  IF A = 22 THEN 2200
4230  IF A = 23 THEN 2300
4240  IF A = 24 THEN 2400
4250  IF A = 25 THEN 2500
4260  IF A = 26 THEN 2600
5000 X =  INT (128 -  LEN (X$) * 6) / 2
5010 Y = ((64 - 7) / 2) * 2
5020  FOR K = 1 TO  LEN (X$)
5030 A$ =  MID$ (X$,K,1): GOSUB 4000
5040 X = X + 12
5050  NEXT : RETURN 
5060  GR :C = 15:D = 8
5070  GOSUB 6010
5075  FOR I = 1 TO 100: NEXT 
5080 C = 5:D = 1
5085  GOSUB 6010
5090  FOR I = 1 TO 100: NEXT 
5091 C = 11:D = 5
5093  GOSUB 6010
5094  FOR I = 1 TO 1000: NEXT 
5095  TEXT 
6000  HOME 
6002  PRINT : PRINT : PRINT : PRINT : PRINT : PRINT 
6004  PRINT  TAB( 7);"*** TAPE LOADING ***": PRINT 
6006  PRINT  TAB( 7);"DO NOT STOP THE TAPE"
6008  CRUN 
6010  COLOR= C,D: GOSUB 5000
6020  RETURN 
