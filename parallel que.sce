t=0;
T=120;
A=0;
C1=0;
C2=0;
n=0;
I1=0;
I2=0;
T0=rand();
tA=T0;
t1=10000000000;
t2=10000000000;
ND1=0;
ND2=0;
NA=0;
while(T0>0)
if (tA==min(tA,t1,t2)&tA<T) then
    t=tA;
    A=A+1;
    tA=t+rand();
    NA=(NA*(A-1)+t)/A;
    if (n==0&I1==0&I2==0)
        n=1;
        I1=A;
        I2=0;
        t1=t+rand();
        continue
    end
    if(n==1&I1>0&I2==0)
        n=2;
        I2=A;
        t2=t+rand();
        continue
    end
    if(n==1&I1==0&I2>0)
  n=2;
  I1=A;
  t1=t+rand();
  continue
end
if(n>1)
    n=n+1;
end
continue
end
if (t1<tA&t1<=t2&t1<T) then
    t=t1;
    C1=C1 +1;
    ND1=(ND1*(C1-1) +t)/C1;
    if (n==1)
        n=0;
        I1=0;
        I2=0;
      t1=10000000000;
      continue
  end
  if (n==2)
      n=1;
      I1=0;
      t1=10000000000;
  continue
  end
  if (n>2)
      m=max(I1,I2);
      n=n-1;
      I1=m+1;
      t1=t+rand();
continue
  end
  continue
end

if (t2<tA&t2<t1&t2<T) then
    t=t2;
    C2=C2 +1;
    ND2=(ND2*(C2-1) +t)/C2;
    if (n==1)
        n=0;
        I1=0;
        I2=0;
      t2=10000000000;
      continue
  end
  if (n==2)
      n=1;
      I2=0;
      t2=10000000000;
 continue
  end
  if (n>2)
      m=max(I1,I2);
      n=n-1;
      I2=m+1;
      t2=t+rand();
      continue
  end
  continue
end
if (min(tA,t1,t2)>T&n>0)
   while(n>0)
    if(t1==min(t1,t2))
            t=t1;
    C1=C1 +1;
    ND1=(ND1*(C1-1) +t)/C1;
    if (n==1)
        n=0;
        I1=0;
        I2=0;
      t1=10000000000;
      continue
  end
  if (n==2)
      n=1;
      I1=0;
      t1=10000000000;
  continue
  end
  if (n>2)
      m=max(I1,I2);
      n=n-1;
      I1=m+1;
      t1=t+rand();
continue
end
end
if (t2==min(t1,t2))
        t=t2;
    C2=C2 +1;
    ND2=(ND2*(C2-1) +t)/C2;
    if (n==1)
        n=0;
        I1=0;
        I2=0;
      t2=10000000000;
      continue
  end
  if (n==2)
      n=1;
      I2=0;
      t2=10000000000;
 continue
  end
  if (n>2)
      m=max(I1,I2);
      n=n-1;
      I2=m+1;
      t2=t+rand();
      continue
  end
end
end
Tp=max(t-T,0);
break
end
end
