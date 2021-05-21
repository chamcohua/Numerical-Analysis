%复化梯形公式
function y=trap(a,b,n)
h=(b-a)/n;
k=n-1;
sum=0;
x=zeros(1,k);
for i=1:k
    x(i)=a+i.*h;
    sum=sum+fun(x(i));
end
% double y;
y=h/2*(fun(a)+2*sum+fun(b));

