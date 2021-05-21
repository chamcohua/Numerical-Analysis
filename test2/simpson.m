%¸´»¯ÐÁÆÕÉ­¹«Ê½
function y=simpson(a,b,n)
h =(b-a)/n;
k=n-1;
sum1=0;
sum2=0;
x1=zeros(1,k+1);
X2=zeros(1,k);
for i=1:k+1
x1(i)=a+(i-0.5).*h;
sum1=sum1+ fun(x1(i));
end
for i=1:k
X2(i)=a+i*h;
sum2=sum2+fun(a+i*h);
end
y=h/6*(fun(a)+4*sum1+2*sum2+fun(b));
