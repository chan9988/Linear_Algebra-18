load Dateset2.txt
x=Dateset2(:,1);
y=Dateset2(:,2);
A0=x./x;
A1=x;
A2=x.*x;
A3=x.*x.*x;
A4=x.*x.*x.*x;
A5=x.*x.*x.*x.*x;
A6=x.*x.*x.*x.*x.*x;
A7=x.*x.*x.*x.*x.*x.*x;
A8=x.*x.*x.*x.*x.*x.*x.*x;
A=[A0 A1 A2 A3 A4 A5 A6 A7 A8];
A(126,1)=1;
w=inv((A.')*A)*(A.')*y;
x1=0:0.01:1;
y0=w(1);
y1=w(2)*x1;
y2=w(3)*x1.^2;
y3=w(4)*x1.^3;
y4=w(5)*x1.^4;
y5=w(6)*x1.^5;
y6=w(7)*x1.^6;
y7=w(8)*x1.^7;
y8=w(9)*x1.^8;
hold on
plot(x1,y0+y1+y2+y3+y4+y5+y6+y7+y8);
plot(x,y,'.');
e1=y-A*w;
e=norm(e1)/300

