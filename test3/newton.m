%ţ�ٷ�������Է��̵ĸ�
function z=newton(x0,n,tol)                % tolΪԤ���ľ���
x(1)= x0;                                  % ѡȡ��ֵx0
m=1;
i=1;
while (abs(m)>tol)
    x(i+1)=x(i)-fun(x(i))./dfun(x(i));     % dfun()Ϊf(x)��һ�ε�����
    m=x(i+1)-x(i);
    i=i+1;
    if i>n
        error('n is full');
    end
end
z=x(i);
end

