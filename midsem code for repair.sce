function [uEB,uER,cEB,cER]=Repair(T,N,n,s,mu,a,b)
g=0;
    EB1=0;
    ER1=0;
    y0=0;
    q0=0;
for v=1:N
t=0;
r=0;
tr=10000000000;
X=zeros(n,1);
for i=1:n
    X(i)=grand(1,1,"unf",a,b);
end
while(s>0)
[t1,p]=min(X);
if (t1<tr&t1<T) then
    t=t1;
    r=r+1;
    if(r==s+1) then
     EB=t;
     ER=tr-t;
     y=t;
     q=tr-t;
     g=g+1;
     break
    end
    if(r<s+1)
        X(p)=t+grand(1,1,"unf",a,b);
    end
    if (r==1)
        tr=t+grand(1,1,"exp",1/mu);
    end
    continue
end
if (tr<=t1&tr<T) then
    t=tr;
    r=r-1;
    if (r>0)
        tr=t+ grand(1,1,"exp",(1/mu));
      end
      if (r==0)
          tr=10000000000;
      end
      continue
   end
   EB=T;
   ER=0;
   break
end
EB1=(EB1*(N-1)+EB)/N;
ER1=(ER1*(N-1)+ER)/N;
if(r>s)
    y0= (y0*(g-1)+y)/g;
    q0= (q0*(g-1)+ q)/g;
 end
 end
uEB=EB1;
uER=ER1;
cEB=y0;
cER=q0;
endfunction

