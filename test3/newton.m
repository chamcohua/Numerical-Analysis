%牛顿法求非线性方程的根
function z=newton(x0,n,tol)                % tol为预定的精度
x(1)= x0;                                  % 选取初值x0
m=1;
i=1;
while (abs(m)>tol)
    x(i+1)=x(i)-fun(x(i))./dfun(x(i));     % dfun()为f(x)的一次导函数
    m=x(i+1)-x(i);
    i=i+1;
    if i>n
        error('n is full');
    end
end
z=x(i);
end

