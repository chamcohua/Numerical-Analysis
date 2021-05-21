function y=language01(x0,y0,x)
% 输入    节点数组x0,y0.
% 插值点数组x.
% 输出    插值数组y.
n1=length(x0);n2=length(y0);m=length(x);
if n1~=n2   error;
end    %节点数组x0,y0一定要同维，否则输出error.
y=zeros(1,m);%以矩阵形式表示，节约计算时间。
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