5    CLS
7    COLOR0,16
10   FORT=1TO19
11   COLORT,16,16
12   NEXT
20   CHAR65,0103070F0F0F0F0F
25   CHAR66,0F0F0F0F0F0F0F0F
30   CHAR67,0F0703
35   CHAR68,FFFFFFFFFFFFFFFF
40   CHAR69,C0E0F0F0F0F8FCFF
45   CHAR70,FFFFFCF8F0F0F0F0
50   CHAR71,F0E0C0
55   CHAR72,FFFFFF
60   CHAR73,FFFFFFFF7F3F
65   CHAR74,FFFFFFFFFFFF
70   CHAR75,FFFFFFFFFEFC
75   CHAR76,003F7FFFFFFFFFFF
80   CHAR77,00FFFFFFFFFFFFFF
85   CHAR78,00FCFEFFFFFFFFFF
90   CHAR79,FFFFFFFFFF7F3F1F
95   CHAR80,FFFFFFFFFFFEFCF8
100  CHAR81,FFFFFFFFFF7F3F1F
105  CHAR82,000000F8FCFEFFFF
107  CHAR60,FFFF
109  CHAR62,00000000000000FF
110  CHAR83,0000001F3F7FFFFF
112  CHAR84,0080C0FFFFFFC080
115  CHAR85,000000FFFFFF0000
120  CHAR86,000000FFFFFFFFFF
125  CHAR48,000103070F0F0F0F
130  CHAR49,0F1F3FFFFFFF3F1F
135  CHAR50,0F0F0F0F0F070301
140  CHAR51,0000000103070F0F
145  CHAR52,0080C0E0FFFFFFFF
150  CHAR53,00000000FFFFFFFF
155  CHAR54,FFFFFFFFFFE0C080
160  CHAR55,FFFFFFFFFF000000
165  CHAR57,000000000000FFFF
170  CHAR56,00000080C0E0FFFF
175  CHAR33,0000000080C0E0F0
180  CHAR34,F0F0F8FCFFFFFCF8
185  CHAR35,F0F0E0C080
190  CHAR36,00000000000080C0
195  CHAR37,F0F0F0F0F0E0C080
200  CHAR41,0000000001030FFF
201  CHAR46,1F3F7FFFFF7F
202  CHAR63,FEFCF8F0E0C0
205  CHAR42,0F1F3F7FFFFFFFFF
206  CHAR87,0103070F0F1F3FFF
207  CHAR88,FFFF3F1F0F0F0F0F
208  CHAR89,0F0F0F070301
209  CHAR90,FFFFFFF0E0C0
210  CHAR43,FCFEFEFFFFFEFEFC
215  CHAR39,FFFF01010103070F
225  CHAR45,F8F8F0F0E0C0
230  CHAR47,F0F0F0E0C080
235  CHAR38,80C0E0F0F0F0F0F0
240  CHAR61,00FFFFFEFCF8F0E0
242  CHAR92,0080C0E0E0F0F8F8
245  CHAR64,000000000103070F
247  CHAR58,1F3F7FFFFF7F3F1F
250  CHAR59,FFFF01010305070F
255  CHAR30,E0C0C08080C0C0E0
265  CHAR93,F1FCFCFEFEFFFEFC
270  CHAR95,000000F0F8F8FCFE
275  CHAR96,0000001F1F3F1F0F
280  CHAR40,00000080E0E0F0F0
285  CHAR28,070303FFFFFF0100
290  CHAR29,0F070301
400  PRINT"ADDDDDDDEWDDDDDDEWDDE>>>)*D+"
405  CHAR91,FCFEFEFEFFFEFCF8
410  PRINT"BDDDDDDDFXDDDDDDFXDDF<<;DDD-"
420  PRINT"CHHIJKHHGYJJZHHHGYJJ/  .JJ?"
430  PRINT"   LMN   0MM4555!0MM&@LMM="
440  PRINT"   DDDTUU1DDDDDD";
445  PRINTCHR$(34);
450  PRINT"1DD";
455  PRINTCHR$(34);
460  PRINT":DDD";
465  PRINTCHR$(30)
470  PRINT"   QDP   2DD6777#2DD%";
475  PRINTCHR$(29);
480  PRINT"QDD";
485  PRINTCHR$(93)
490  PRINT"   SVR   3VV8999$3VV(  ";
492  PRINTCHR$(96);
493  PRINT"VV";
495  PRINTCHR$(95)
500  PRINT"   DDDTUU1DDDDDD";
505  PRINTCHR$(34);
507  PRINT"1DD";
508  PRINTCHR$(34);
510  PRINT"UU";
515  PRINTCHR$(28);
520  PRINT"DDD";
525  PRINTCHR$(92)
530  PRINT"   QDP   2DDDDDD%2DD%   ";
535  PRINTCHR$(29);
540  PRINT"QD";
545  PRINTCHR$(91)
550  FORS=1TO9
552  PRINT
555  NEXT
560  FORR=1TO5
561  COLOR0,16
562  FORX=1TO15
563  COLORX,7,16
564  NEXT
565  GOSUB600
566  COLOR0,7
567  FORX=1TO15
568  COLORX,16,7
569  NEXT
570  GOSUB600
571  COLOR0,16
572  FORX=1TO15
573  COLORX,5,16
574  NEXT
575  GOSUB600
576  COLOR0,5
577  FORX=1TO16
578  COLORX,16,5
579  NEXT
580  GOSUB600
583  NEXT
585  CRUN
587  END
600  FORV=1TO20
610  NEXT
620  RETURN
630  END
635  END
