S=
s=
L=
h=
x=
y=
T=
t=0;
H=0;
R=0;
D=0;
t1=10000000000;
U=rand();
t0=-(1/lembda)*log(U);
if (t0<t1) then
    H=H+(t0-t)*x*h;
    t=t0;
    D=rand();
    w=min(D,x);
    R=R+w*r;
     x=x-w;
     if(x<s&y==0)
         y=S-x;
         t1=t+L;
         U=rand();
         t0=t-(1/lembda)*log(U);
     end
     continue
 end
 if (t1<=t0) then
     H=H+(t1-t)*x*h;
     t=t1;
     C=C+ c(y);
     x=x+y;
     y=0;
     t1=10000000000;
     continue
 end
 
 end
