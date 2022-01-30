function PSW = PercentSW(BigR,H)     %随着掺入百分率的增加，不同小球直径下混凝土的比重变化曲线
P =(0:0.1:1);
R=12.5;r=11.5;N=QuantityMatrix(BigR,R);l=2;
PSW =2.3-(2.3.*4./3.*R.^3/(BigR^2.*H)-(pi().*4./3.*(R.^3-r.^3)+1.5.*pi().*2.*R.*l.^2).*2.5./(pi().*BigR.^2.*H)).*N.*P;
disp(PSW)
plot(P,PSW);
hold on;
R=10;r=9;N=Quantity(BigR,R);l=2;
PSW =2.3-(2.3*4/3*R^3/(BigR^2*H)-(pi()*4/3*(R^3-r^3)+1.5*pi()*2*R*l^2)*2.5/(pi()*BigR^2*H))*N*P;
plot(P,PSW);
disp(PSW);
hold on;
R=7;r=6;N=Quantity(BigR,R);l=2;
PSW =2.3-(2.3*4/3*R^3/(BigR^2*H)-(pi()*4/3*(R^3-r^3)+1.5*pi()*2*R*l^2)*2.5/(pi()*BigR^2*H))*N*P;
plot(P,PSW);
hold on;

xlabel('percent'), ylabel('SW'), title('SW Graph');grid on;
legend('R=12.5,r=11.5','R=10,r=9','R=7,r=6') %可依次设置为直线名称
end

   