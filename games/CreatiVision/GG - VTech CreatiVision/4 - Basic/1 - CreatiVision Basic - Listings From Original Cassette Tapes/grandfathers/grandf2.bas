30   FORX=96TO144STEP16
40   CHARX,C0F0FCFFFFFFFFFF
50   CHARX+72,C0F0FCFFFFFFFFFF
60   CHARX+1,00000000C0F0FCFF
70   CHARX+73,00000000C0F0FCFF
80   NEXT
90   FORX=104TO152STEP16
100  CHARX,030F3FFFFFFFFFFF
110  CHARX+1,00000000030F3FFF
120  CHARX+56,030F3FFFFFFFFFFF
130  CHARX+57,00000000030F3FFF
140  NEXT
150  FORX=98TO218STEP8
160  CHARX,00
170  CHARX+1,FFFFFFFFFFFFFFFF
180  NEXT
190  FORX=0TO8STEP8
200  CHAR8+X,0080808080808080
210  CHAR9+X,00C0C0C0C0C0C0C0
220  CHAR10+X,00E0E0E0E0E0E0E0
230  CHAR11+X,00F0F0F0F0F0F0F0
240  CHAR12+X,00F8F8F8F8F8F8F8
250  CHAR13+X,00FCFCFCFCFCFCFC
260  CHAR14+X,00FEFEFEFEFEFEFE
270  CHAR15+X,00FFFFFFFFFFFFFF
280  NEXT
290  FORX=0TO7
300  CHARX,00
310  NEXT
320  CHAR24,00
390  CRUN,N