function y=language01(x0,y0,x)
% ����    �ڵ�����x0,y0.
% ��ֵ������x.
% ���    ��ֵ����y.
n1=length(x0);n2=length(y0);m=length(x);
if n1~=n2   error;
end    %�ڵ�����x0,y0һ��Ҫͬά���������error.
y=zeros(1,m);%�Ծ�����ʽ��ʾ����Լ����ʱ�䡣
for i=1:m
    z=x(i);s=0.0;
   for k=1:n1
       p=1.0;
       for j=1:n2
           if j~=k
               p=p*(z-x0(j))/(x0(k)-x0(j));
           end
       end
       s=p*y0(k)+s;
   end
   y(i)=s;
end