1    REM HIGH RESOLUTION GRAPHICS
5    CLS
15   COLOR5,2,2
20   COLOR0,2,2
25   FORI=18TO29
30   COLORI,2,2
35   NEXT
37   P=3
38   GOSUB1000
40   CHAR222,3E3F3F0303030301
45   CHAR223,00008080808080C0
50   CHAR224,0000000000000001
55   CHAR225,3E7EFEE0E0E0E0C0
60   CHAR136,00030F1F3C387870
65   CHAR137,FFFFFF80
70   CHAR138,C0C3C70F0E1E1C1C
75   CHAR139,FFFFFF
80   CHAR140,C0E0F07838383878
85   CHAR141,0F1F3F7C78707070
90   CHAR142,FFFFFF
92   GOSUB1000
95   CHAR143,808080
100  CHAR144,0E1F3F3B3B717171
145  CHAR145,0303838080C0C0C0
146  CHAR146,FEFFFF0303030303
147  CHAR147,0F1FBFB8B8B8B8B8
148  CHAR148,F8F8F8
149  CHAR149,E1E1E0E0E0E0E0E0
150  CHAR150,C0C0E0E0E0707070
152  CHAR152,0101030303070707
153  CHAR153,C3C3838383030303
154  CHAR154,81878F8F9E9C9C9C
155  CHAR155,FFFFFF
156  CHAR156,F8F8F8
157  CHAR157,E0E0E0E0E0E1E1E3
158  CHAR158,071F3F7CF0E0C0C0
159  CHAR159,FFFFFF03
160  CHAR160,0080C0E0F078383C
161  CHAR161,1F3F3F3B39383838
162  CHAR162,0080C0C0C0E0E0E0
163  CHAR163,1F3F3F3838383838
164  CHAR164,F0E0E0E0E0E0E0F0
165  GOSUB1000
166  CHAR166,1C1C1D1D1D1C1C1C
167  CHAR167,7FFFFFE0FFFF7F
168  CHAR168,F0E0C000C0E0F0F8
169  CHAR169,7F3F1F001F3F7F70
170  CHAR170,FEFFFF03FFFFFE
171  CHAR171,0000808181010303
172  CHAR172,E0E0E7CFDFDC9F8F
173  CHAR173,E0E0E0E0C000F0F8
174  CHAR174,0303030303030303
175  CHAR175,B8B8B8B8B8B8B8B8
177  CHAR177,E0E0E0E0E0E0E0E0
178  CHAR178,3838381C1C1C0E0E
179  CHAR179,0E0E0E1C1C1C3838
180  CHAR180,0303030303030303
181  CHAR181,9E9F8F8783808080
182  CHAR182,0000FFFFFF
183  CHAR183,000080C0E0F07838
184  CHAR184,E3E3E3E3E3E3E3E3
185  CHAR185,8080808080808080
186  GOSUB1000
187  CHAR187,1C1C1C1C1C1C1C1C
188  CHAR188,3838383838383838
189  CHAR189,7070703838381C1C
190  CHAR190,3838383838383838
191  CHAR191,70783C3E1F0F03
192  CHAR192,0000000000FFFFFF
193  CHAR193,1C1C1C1C1CFCFCFC
195  CHAR195,78383838383F1F0F
196  CHAR196,707070787C3F1F0F
197  CHAR197,0000000000FFFFFF
198  CHAR198,0307070E0EFCFCF8
199  CHAR199,87
200  CHAR200,F81C1C0E0E070703
201  CHAR201,0303030303E3E1E0
202  CHAR202,B8B8B8B8B8F8F0E0
204  CHAR204,E0E0E0E0E0E0E0E0
205  CHAR205,0E07070703030301
206  CHAR206,00000000808080C1
207  CHAR207,38707070E0E0E0C0
208  CHAR208,0303030303030303
209  CHAR209,80808080808F8F8F
210  CHAR210,0000000000FFFFFF
211  CHAR211,38383878F8E0C000
212  CHAR212,E3E1E1E0E0E0E0E0
213  CHAR213,C0C0E0F07C3F1F07
214  CHAR214,0000000003FFFFFF
215  CHAR215,3C3878F0E0C18101
216  CHAR216,3838383838F8F8F0
217  CHAR217,1C0E0E0707070301
218  CHAR218,38383838B8F8F8F0
219  CHAR219,0101
220  CHAR220,C1C1E3E3E3777F3E
221  CHAR221,C0C0808080
222  GOSUB1000
230  PLOT16,8,222
232  PLOT17,8,223
234  PLOT19,8,224
236  PLOT20,8,225
238  LETZ=135
240  FORY=9TO11
245  FORX=3TO30
248  LETZ=Z+1
250  PLOTX,Y,Z
252  IFZ=178THENLETX=18
254  NEXT
260  GOSUB1000
261  NEXT
262  PLOT17,12,219
264  PLOT18,12,220
266  PLOT19,12,221
280  FORI=1TO11
282  COLORI,2,2
284  IFI=4THEN LETI=5
286  NEXT
288  GOSUB1000
300  CHAR0,8040201008040201
301  CHAR1,020101
302  CHAR2,0000008040201010
303  CHAR3,0804020201
304  CHAR4,8844241212898844
305  CHAR5,0000000000008080
306  CHAR6,040402020101
307  CHAR7,0000000000008080
308  CHAR8,020202010101
309  CHAR9,1010101008088888
310  CHAR10,9090909090484848
311  GOSUB1000
312  CHAR12,9090909090909090
313  CHAR13,0404040909090912
314  CHAR14,9090A02020204040
315  CHAR15,0000010102020204
316  CHAR16,8181020204040909
317  CHAR17,202040408080
318  CHAR18,0204040810102040
319  CHAR19,0404080810202040
320  CHAR20,0204040810214244
321  CHAR21,1020404080
322  CHAR22,0204081011224488
323  CHAR23,10204080
324  GOSUB1000
330  FORX=4TO16
332  PLOTX,12,X-4
334  NEXT
340  FORX=20TO30
342  PLOTX,12,X-7
344  NEXT
440  CHAR40,8040402010080403
441  CHAR41,0804020101
442  CHAR42,0000000000804020
443  CHAR43,2222110908040202
444  CHAR44,4040201090484824
445  CHAR45,0000000000000000
446  CHAR46,4040402020101008
447  CHAR47,0000000000000000
448  CHAR48,8444444422222212
449  CHAR49,4848242424241412
450  CHAR50,0000000000000000
451  CHAR51,9090909090909050
452  CHAR52,0000000000000000
453  CHAR53,4242424242424244
454  CHAR54,0000000000000000
455  CHAR55,121214242529294A
456  CHAR56,40808080
457  CHAR57,0408081010102020
458  CHAR58,12122428485090A0
459  CHAR59,0000010102040408
460  CHAR60,4081010204040810
461  CHAR61,8001020404080911
462  CHAR62,880810204080
463  CHAR63,0102040811224488
464  CHAR64,10204080
465  CHAR65,8080402010080404
466  CHAR66,10100804020101
467  CHAR67,0100000000000080
468  CHAR68,2292894924241209
469  CHAR69,0000000080404020
470  CHAR70,0804040202010101
471  CHAR71,0000000000000000
472  CHAR72,1111110908080404
473  CHAR73,1212120B8B898989
474  CHAR74,0000000000000000
475  CHAR75,5050505050505050
476  CHAR76,0000000000000000
477  CHAR77,4444448484848888
478  CHAR78,0000000000000001
479  CHAR79,4A525494A4A8A828
480  CHAR80,0000000101010202
481  CHAR81,414182820405090A
482  CHAR82,2040408080000001
483  CHAR83,0810102040418102
484  CHAR84,1020404081020408
485  CHAR85,2244889010204080
486  CHAR86,0001020409122448
487  CHAR87,90204080
488  GOSUB1000
490  FORX=5TO29
492  PLOTX,13,X+35
494  NEXT
496  FORX=6TO28
498  PLOTX,14,X+59
500  NEXT
688  CHAR88,0201
689  CHAR89,0000804020100804
690  CHAR90,4020101008040201
691  CHAR91,0904020201
692  CHAR92,2090482824949249
693  CHAR93,
694  CHAR94,8080404020202010
695  CHAR95,0404020202010101
696  CHAR96,4545454422222222
697  CHAR97,0000008080808080
698  CHAR98,4848484848482828
699  CHAR99,0000000000010101
700  CHAR100,8888888888101010
701  CHAR101,0101020202020505
702  CHAR102,505050A0A0A02040
703  CHAR103,0204040808081010
704  CHAR104,12142428485090A0
705  CHAR105,0102040408101010
706  CHAR106,0404081020204182
707  CHAR107,0911224488902020
708  CHAR108,0001020404091224
709  CHAR109,8810204080
710  GOSUB1000
720  COLOR12,2,2
722  COLOR13,2,2
724  COLOR14,2,2
730  FORX=6TO27
732  PLOTX,15,X+82
734  NEXT
800  PLOT15,12,32
812  CHAR112,0201
813  CHAR113,0100804040201008
814  CHAR114,0080402010100804
815  CHAR115,2524120A09040202
816  CHAR116,0080804020A09050
817  CHAR117,1008080404040202
819  CHAR119,9291919149484824
820  CHAR120,4040404040A0A0A0
821  CHAR121,2828282828282828
822  CHAR122,0101010101010101
823  CHAR123,1010101020202020
824  CHAR124,05050A0A0A151515
825  CHAR125,4040808080000001
826  CHAR126,2121424245858A0A
827  CHAR127,4040808001010204
828  CHAR128,2041428204080810
829  CHAR129,8408091122448890
830  CHAR130,4080010204091224
831  CHAR131,4890204080
832  GOSUB1000
835  CHAR132,
836  CHAR133,
837  CHAR134,
838  CHAR135,
840  COLOR15,2,2
841  COLOR16,2,2
842  COLOR17,2,2
845  PLOT15,11,32
850  FORX=7TO26
852  PLOTX,16,X+105
854  NEXT
855  FORL=1TO10
856  A=6
858  B=10
859  C=4
900  COLOR15,A,2
902  COLOR16,A,2
904  COLOR17,A,2
910  COLOR12,B,2
912  COLOR13,B,2
914  COLOR14,B,2
920  FORI=11TO1STEP-1
922  COLORI,C,2
924  IFI=6THEN LETI=5
926  NEXT
930  FORI=27TO18STEP-1
932  COLORI,12,2
934  NEXT
936  COLOR28,12,2
938  COLOR29,12,2
939  IFC=6THEN960
940  A=10
942  B=4
944  C=6
950  GOTO900
960  A=4
962  B=6
964  C=10
966  FORI=1TO10
968  NEXT
970  NEXT
980  CRUN
1000 COLOR17,4,2
1010 CHAR132,0102020100000001
1020 CHAR133,C02020C0808080C0
1030 CHAR134,0204080102040810
1040 CHAR135,A090884020202020
1050 PLOTP,5,132
1052 PLOTP+1,5,133
1054 PLOTP,6,134
1056 PLOTP+1,6,135
1070 PLOTP-2,5,32
1072 PLOTP-1,5,32
1074 PLOTP-2,6,32
1076 PLOTP-1,6,32
1078 P=P+2
1080 RETURN
