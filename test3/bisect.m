%���ַ�������Է��̵ĸ�
function z=bisect(a,b,n,tol)       %tolΪԤ���ľ���
x0=(a+b)./2;
m=1;
i=1;
while abs(m)>tol
    x0=(a+b)./2;                    %x0Ϊ����[a,b]���е�
    if fun(x0)==0                   %x0Ϊ���󷽳̵ĸ�
        break;
    elseif fun(x0)*fun(x0)<0        %���̵ĸ���x0�����
        b=x0;
    elseif fun(x0)*fun(x0)>0        %���̵ĸ���x0�����
        a=x0;
    end
    i=i+1;                          %�����Ĵ���
    if i>n
        disp('n is full');         %�ﵽ��Ҫ������Ĵ���
    end
end
z=x0;
end
