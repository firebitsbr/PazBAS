1 cls:?tab(17)"PAZ":DIMS$(16):R=RND(-TIME):KEYOFF:ONINTERVAL=50GOSUB10:goto9
2 CLS:?"PTS"P:R=RND(1):L=25*R:IFR>(1-R)THENM=0:N=L-1:ELSEM=L+1:N=25
3 FORI=0TO15:R=RND(1):S$(I)=CHR$(97+R*(N-M)+M):NEXTI:A$=CHR$(97+L):T%=RND(1)*3+1
4 K%=0:FORI=0TOT%-1:K%=K%+RND(1)*4+1:S$(K%)=A$:NEXT:C=0:FORI=0TO3:FORJ=0TO3
5 LOCATE15+I*2,8+J*2:?S$(I*4+J):NEXTJ,I:LOCATE16,5:?T%"X":E=10:INTERVALON:
6 ifP>HthenH=P:goto6:elseK$=INKEY$:ifE=0thenC=T%:goto9:ELSEifK$<"a"orK$>"z"then6
7 INTERVALOFF:FORI=0TO3:FORJ=0TO3:LOCATE15+I*2,8+J*2:K=I*4+J:ifS$(K)<>K$then?" "
8 NEXTJ,i:FORI=0TO15:ifS$(I)=K$THENC=C+1:locate16,16:?C""K$:next:elsenext
9 locate15,22:?"ANY KEY";:k$=input$(1):IFC=T%thenP=P+E:goto2:elseP=P-E:goto2
10 IFE=0THENreturn:ELSE E=E-1:LOCATE15,0:?"HIGH"H:locate30,0:?E"SECS":RETURN
