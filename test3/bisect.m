%二分法求非线性方程的根
function z=bisect(a,b,n,tol)       %tol为预定的精度
x0=(a+b)./2;
m=1;
i=1;
while abs(m)>tol
    x0=(a+b)./2;                    %x0为区间[a,b]的中点
    if fun(x0)==0                   %x0为所求方程的根
        break;
    elseif fun(x0)*fun(x0)<0        %方程的根在x0的左侧
        b=x0;
    elseif fun(x0)*fun(x0)>0        %方程的根在x0的左侧
        a=x0;
    end
    i=i+1;                          %迭代的次数
    if i>n
        disp('n is full');         %达到了要求迭代的次数
    end
end
z=x0;
end
