1    C=10
2    R=12
3    I=22
4    B=1
5    J=12
6    D=15
10   CLS
20   COLOR0,2
30   FORT=1TO12
40   COLORT,16,1
50   NEXT
500  CHAR1,000739C2C2390700
510  CHAR2,C0B04C4323241818
520  CHAR3,1818242424425A66
530  CHAR4,030D32C2C4341818
550  CHAR5,00E09C43439CE000
560  CHAR6,181824C4C2320D03
570  CHAR7,665A422424241818
580  CHAR8,18182423434CB0C0
600  CHAR11,00006F92926F
619  CHAR12,6090907C12130C04
620  CHAR13,1824241824243C24
630  CHAR14,0609093E48C83020
640  CHAR15,0000F64949F6
650  CHAR16,2030C8483E090906
660  CHAR17,243C242418242418
670  CHAR18,040C13127C909060
680  CHAR19,4004208280082812
692  CHAR20,00200424402A14
694  CHAR21,0002183804
700  CHAR24,0000001818
800  GOTO9000
1000 P=1
1001 IFC=IANDR=JTHEN4200
1010 A=JOY(1)
1020 IFA=3THENB=B+1
1030 IFA=7THENB=B-1
1035 IFA=5THEN1900
1040 IFJOY(3)=2THEN1099
1045 IFJOY(3)=1THEN2200
1090 IFB>8THENB=1
1091 IFB<1THENB=8
1095 PLOTC,R,B
1096 GOTO2000
1099 SOUND28;1
1100 V=C
1101 W=R
1102 K=D
1103 IFB=4THEN1400
1104 IFB=5THEN1500
1105 IFB=6THEN1600
1106 IFB=7THEN1700
1107 IFB=8THEN1800
1108 IFB=1THEN1111
1109 IFB=2THEN1200
1110 IFB=3THEN1300
1111 X=V-1
1112 Y=W
1113 IFX<1THENX=32
1120 FORZ=1TO10
1121 PLOTX,Y,32
1122 X=X-1
1124 IFX<1THENX=32
1140 PLOTX,Y,24
1180 IFX=IANDY=JTHEN4000
1181 IFX=CANDY=RTHEN4000
1185 NEXT
1186 PLOTX,Y,32
1190 GOTO2000
1200 X=V-1
1210 Y=W-1
1211 IFX<1THENX=32
1212 IFY<1THENY=24
1220 FORZ=1TO10
1221 PLOTX,Y,32
1222 X=X-1
1223 Y=Y-1
1225 IFX<1THENX=32
1226 IFY<1THENY=24
1240 PLOTX,Y,24
1280 IFX=IANDY=JTHEN4000
1281 IFX=CANDY=RTHEN4000
1285 NEXT
1287 PLOTX,Y,32
1290 GOTO2000
1300 X=V
1310 Y=W-1
1311 IFY<1THENY=24
1320 FORZ=1TO10
1321 PLOTX,Y,32
1322 Y=Y-1
1323 IFY<1THENY=24
1330 PLOTX,Y,24
1340 IFX=IANDY=JTHEN4000
1381 IFX=CANDY=RTHEN4000
1385 NEXT
1387 PLOTX,Y,32
1390 GOTO2000
1400 X=V+1
1410 Y=W-1
1411 IFX>32THENX=1
1412 IFY<1THENY=24
1420 FORZ=1TO10
1421 PLOTX,Y,32
1422 X=X+1
1423 Y=Y-1
1424 IFX>32THENX=1
1425 IFY<1THENY=24
1430 PLOTX,Y,24
1440 IFX=IANDY=JTHEN4000
1450 IFX=CANDY=RTHEN4000
1485 NEXT
1487 PLOTX,Y,32
1490 GOTO2000
1500 X=V+1
1510 Y=W
1511 IFX>32THENX=1
1520 FORZ=1TO10
1521 PLOTX,Y,32
1522 X=X+1
1524 IFX>32THENX=1
1530 PLOTX,Y,24
1540 IFX=IANDY=JTHEN4000
1550 IFX=CANDY=RTHEN4000
1585 NEXT
1587 PLOTX,Y,32
1590 GOTO2000
1600 X=V+1
1610 Y=W+1
1611 IFX>32THENX=1
1612 IFY>24THENY=1
1620 FORZ=1TO10
1621 PLOTX,Y,32
1622 X=X+1
1623 Y=Y+1
1624 IFX>32THENX=1
1625 IFY>24THENY=1
1630 PLOTX,Y,24
1640 IFX=IANDY=JTHEN4000
1650 IFX=CANDY=RTHEN4800
1685 NEXT
1687 PLOTX,Y,32
1690 GOTO2000
1700 X=V
1710 Y=W+1
1711 IFY>24THENY=1
1720 FORZ=1TO10
1721 PLOTX,Y,32
1722 Y=Y+1
1724 IFY>24THENY=1
1730 PLOTX,Y,24
1740 IFX=IANDY=JTHEN4000
1750 IFX=CANDY=RTHEN4000
1785 NEXT
1786 PLOTX,Y,32
1790 GOTO2000
1800 X=V-1
1810 Y=W+1
1811 IFX<1THENX=32
1812 IFY>24THENY=1
1820 FORZ=1TO10
1821 PLOTX,Y,32
1822 X=X-1
1823 Y=Y+1
1824 IFX<1THENX=32
1825 IFY>24THENY=1
1830 PLOTX,Y,24
1840 IFX=IANDY=JTHEN4000
1850 IFX=CANDY=RTHEN4000
1885 NEXT
1886 PLOTX,Y,32
1890 GOTO2000
1900 T=C
1901 U=R
1902 K=B
1903 IFB=4THEN1940
1904 IFB=5THEN1950
1905 IFB=6THEN1960
1906 IFB=7THEN1970
1907 IFB=8THEN1980
1908 IFB=1THEN1912
1909 IFB=2THEN1920
1910 IFB=3THEN1930
1912 PLOTC,R,32
1913 C=C-1
1914 IFC<1THENC=32
1915 PLOTC,R,B
1919 GOTO2000
1920 PLOTC,R,32
1921 C=C-1
1922 R=R-1
1923 IFR<1THENR=24
1924 IFC<1THENC=32
1925 PLOTC,R,B
1929 GOTO2000
1930 PLOTC,R,32
1931 R=R-1
1934 IFR<1THENR=24
1935 PLOTC,R,B
1939 GOTO2000
1940 PLOTC,R,32
1941 C=C+1
1942 R=R-1
1943 IFC>32THENC=1
1944 IFR<1THENR=24
1945 PLOTC,R,B
1949 GOTO2000
1950 PLOTC,R,32
1951 C=C+1
1954 IFC>32THENC=1
1955 PLOTC,R,B
1959 GOTO2000
1960 PLOTC,R,32
1961 C=C+1
1962 R=R+1
1963 IFC>32THENT=1
1964 IFR>24THENR=1
1965 PLOTC,R,B
1969 GOTO2000
1970 PLOTC,R,32
1971 R=R+1
1974 IFR>24THENR=1
1975 PLOTC,R,B
1979 GOTO2000
1980 PLOTC,R,32
1981 C=C-1
1982 R=R+1
1983 IFC<1THENC=32
1984 IFR>24THENR=1
1985 PLOTC,R,B
1989 GOTO2000
2000 P=2
2001 IFC=IANDR=JTHEN4200
2005 E=JOY(2)
2010 IFE=3THEND=D+1
2020 IFE=7THEND=D-1
2025 IFE=5THEN3900
2030 IFD>18THEND=11
2040 IFD<11THEND=18
2045 IFJOY(4)=2THEN2999
2050 IFJOY(4)=1THEN2300
2090 PLOTI,J,D
2099 GOTO1000
2200 PLOTC,R,19
2202 PLOTC,R,20
2203 PLOTC,R,21
2204 PLOTC,R,32
2210 C=RND(32)
2215 R=RND(24)
2216 PLOTC,R,21
2217 PLOTC,R,20
2218 PLOTC,R,19
2219 PLOTC,R,B
2220 GOTO2000
2300 PLOTI,J,19
2302 PLOTI,J,20
2303 PLOTI,J,21
2304 PLOTI,J,32
2310 I=RND(32)
2315 J=RND(24)
2316 PLOTI,J,21
2317 PLOTI,J,20
2318 PLOTI,J,19
2319 PLOTI,J,D
2320 GOTO1000
2999 SOUND27;1
3000 V=I
3001 W=J
3002 K=B
3004 IFD=11THEN1111
3010 IFD=12THEN1200
3015 IFD=13THEN1300
3020 IFD=14THEN1400
3025 IFD=15THEN1500
3030 IFD=18THEN1800
3035 IFD=17THEN1700
3040 IFD=16THEN1600
3900 T=I
3901 U=J
3902 K=D
3903 IFD=11THEN3912
3904 IFD=12THEN3920
3905 IFD=13THEN3930
3906 IFD=14THEN3940
3907 IFD=15THEN3950
3908 IFD=16THEN3960
3909 IFD=17THEN3970
3910 IFD=18THEN3980
3912 PLOTI,J,32
3913 I=I-1
3914 IFI<1THENI=32
3915 PLOTI,J,D
3919 GOTO1000
3920 PLOTI,J,32
3921 I=I-1
3922 J=J-1
3923 IFI<1THENI=32
3924 IFJ<1THENJ=24
3925 PLOTI,J,D
3929 GOTO1000
3930 PLOTI,J,32
3931 J=J-1
3934 IFJ<1THENJ=24
3935 PLOTI,J,D
3939 GOTO1000
3940 PLOTI,J,32
3941 I=I+1
3942 J=J-1
3943 IFJ<1THENJ=24
3944 IFI>32THENI=1
3945 PLOTI,J,D
3949 GOTO1000
3950 PLOTI,J,32
3951 I=I+1
3954 IFI>32THENI=1
3955 PLOTI,J,D
3959 GOTO1000
3960 PLOTI,J,32
3961 I=I+1
3962 J=J+1
3963 IFI>32THENI=1
3964 IFJ>24THENJ=1
3965 PLOTI,J,D
3969 GOTO1000
3970 PLOTI,J,32
3971 J=J+1
3974 IFJ>24THENJ=1
3975 PLOTI,J,D
3979 GOTO1000
3980 PLOTI,J,32
3981 I=I-1
3982 J=J+1
3983 IFI<1THENI=32
3984 IFJ>24THENJ=1
3985 PLOTI,J,D
3989 GOTO1000
4000 SOUND2;1
4001 PLOTX,Y,K
4010 FORI=96TO103
4011 CHARI,
4012 NEXT
4020 PLOTX,Y,K
4021 IFX-1<1THENX=32
4022 IFY+1>24THENY=1
4025 PLOTX-1,Y+1,103
4027 IFX+1>32THENX=1
4030 PLOTX+1,Y,97
4031 IFX-1<1THENX=32
4032 PLOTX-1,Y,98
4033 IFY+1>24THENY=1
4034 PLOTX,Y+1,99
4035 IFY-1<1THENY=24
4036 PLOTX,Y-1,100
4040 IFX+1>32THENX=1
4041 IFY+1>24THENY=1
4042 PLOTX+1,Y+1,101
4050 IFX-1<1THENX=32
4051 IFY-1<1THENY=24
4052 PLOTX-1,Y-1,102
4100 PLOTX,Y,96
4110 COLOR13,2,2
4112 PLOTX,Y,K
4113 CHAR96,4AAC7C1F3FD6B574
4135 CHAR100,0000000004040489
4143 CHAR102,0000100804020118
4144 CHAR103,0C010204
4145 CHAR97,000000FC00C020C0
4146 CHAR98,060100300C030003
4147 CHAR99,AA4A448484
4148 CHAR101,40605028
4149 PLOTX,Y,96
4150 COLOR13,15,1
4151 CHAR101,4060B02810
4152 COLOR13,12,1
4153 CHAR101,4060B0282010
4154 COLOR13,11,1
4155 CHAR101,4060B0201010
4156 FORL=1TO5
4157 NEXT
4173 COLOR13,10,1
4174 COLOR13,9,1
4175 COLOR13,7,1
4176 COLOR13,2,1
4190 GOTO5000
4200 CHARK,084CC6181872BA62
4201 X=C
4202 Y=J
4203 P=3
4204 GOTO4000
5000 CLS
5060 IFP=1THENPRINT"WELL DONE!! ";A$
5065 IFP=2THENPRINT"WELL DONE!! ";B$
5070 PRINT
5071 PRINT"YOU WERE ABLE TO DESTROY YOUR"
5072 IFP=1THENPRINT"OPPONENT ";B$
5073 IFP=2THENPRINT"OPPONENT ";A$
5074 IFP=3THENPRINT"OPPONENT A           !"
5085 FORI=1TO5
5090 PRINT
5095 NEXT
6000 PRINT"DO YOU WANT ANOTHER GO  (Y/N)"
6001 INPUTZ$
6002 IFZ$="Y"THEN1
6003 IFZ$="N"THENEND
6004 GOTO6000
9000 PRINT"         SPACE   DUEL"
9010 PRINT
9020 PRINT"      BY D.C.ROBERTSON"
9025 FORT=1TO50
9026 NEXT
9030 CLS
9031 PRINT"THE OBJECT IS VERY SIMPLE IT "
9032 PRINT"IS TO DESTROY YOUR OPPONENTS "
9033 PRINT"SHIP."
9035 PRINT
9036 PRINT"YOUR CONTROLS ARE-"
9037 PRINT
9038 PRINT"TO ROTATE LEFT MOVE THE      "
9039 PRINT"JOYSTICK LEFT"
9040 PRINT
9041 PRINT"TO ROTATE RIGHT MOVE THE     "
9042 PRINT"JOYSTICK RIGHT"
9043 PRINT
9045 PRINT"TO FIRE PRESS THE RIGHT FIRE "
9046 PRINT"BUTTON"
9047 PRINT
9048 PRINT"TO GO INTO HYPERSPACE PRESS  "
9049 PRINT"THE LEFT FIRE BUTTON."
9200 FORU=1TO400
9201 NEXT
9202 CLS
9300 PRINT"THE CONTROLS APPLY TO BOTH   "
9301 PRINT"JOYSTICKS."
9302 PRINT
9400 PRINT"YOU CAN NOT HIT YOUR OPPONENT"
9401 PRINT"AT POINT BLANK RANGE       "
9500 PRINT"PLEASE TYPE IN YOUR NAMES    "
9501 PRINT"PLAYER 1 ():";
9502 INPUTA$
9503 PRINT
9504 PRINT"PLAYER 2 ():";
9505 INPUTB$
9998 CLS
9999 GOTO1000
