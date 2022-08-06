i=0
t=0
A=0
D=0
S=0
NA=0
ND=0
T0=rand();
tA=T0;
tD=10000000000;
while(T0>=0)
    i=i+1;
if (tA<=tD&tA<T) then
    t=tA;
    A=A+1;
    S=S+1;
    tA=t+rand();
if (S==1) then
    Y=rand();
    tD=t+Y;
 end
    NA=(NA*(A-1)+t)/A;
 continue
 end
 if (tD<tA&tD<=T) then
     t=tD;
     S=S-1;
     D=D+1;
     if (S==0) then
         tD=10000000000;
     else 
         Y=rand();
         tD=t+Y;
 end
 ND=(ND*(D-1)+t)/D;
continue
end
if (min(tA,tD)>T&S>0) then
  t=tD;
  S=S-1;
  D=D+1;
  if (S>0) then
      Y=rand();
      tD=t+Y;  
end
ND=(ND*(D-1)+t)/D;
continue
end
if (min(tA,tD)>T&S==0) then
    Tp=max(t-T,0);
    break
end
end
