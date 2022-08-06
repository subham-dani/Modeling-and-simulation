i=0;
T=1200;
t=0;
A=0;
D=0;
n1=0;
n2=0;
NA1=0;
NA2=0;
ND=0;
T0=rand();
tA=T0;
t1=10000000000;
t2=10000000000;
while(T0>0)
    i=i+1;
if (tA==min(tA,t1,t2)&tA<=T) then
    t=tA;
    A=A+1;
    n1=n1 + 1;
    tA=t+rand();
    NA1=(NA1*(A-1)+t)/A;
    if (n1==1)
    Y1=rand();
    t1=t+Y1;
    end
continue
end
if (t1<tA&t1<=t2&t1<=T) then
    t=t1;
    n1=n1 - 1;
    n2=n2 + 1;
    if (n1==0)
        t1=10000000000;
    else
        Y1=rand();
        t1=t+Y1;
    end
    if (n2==1)
        Y2=rand();
        t2=t + Y2;
    end
    NA2=(NA2*(A-n1-1) + t)/(A-n1);
    continue
end
if (t2<tA&t2<t1&t2<=T) then
    t=t2;
    D=D+1;
    n2=n2 -1;
    if (n2==0)
        t2=10000000000;
    end
    if(n2>0)
        Y2=rand();
        t2=t+Y2;
    end
    ND=(ND*(D-1)+t)/D;
    continue
end
if (min(tA,t1,t2)>T&(n1+n2)>0)
    if (t1==min(t1,t2)&n1>0)
        t=t1;
        n1=n1-1;
        n2=n2+1;
        NA2=(NA2*(A-n1-1) + t)/(A-n1);
        if(n1>0)
            Y1=rand();
            t1=t+Y1;
         end
         if (n1==0)
             t1=10000000000;
             end
     end
     if(t2==min(t1,t2)&n2>0)
        t=t2;
        n2=n2-1;
        D=D+1;
        if(n2>0)
            Y2=rand();
            t2=t+Y2;
       end
       if (n2==0)
           t2=10000000000;
       end
   end
   continue
end
if(min(tA,t1,t2)>T&n1==0&n2==0)
    Tp=max(t-T,0);
    break
end
end
