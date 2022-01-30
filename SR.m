function DSW = SR(l)     %(模具半径,模具高，球外径，球内径，肋宽，总球数，投入百分数）
R=(15:-1:5);
r=R-1;
N=QuantityMatrix(75,R);
PS=0.3.*pi().*75^2*300./(4/3.*pi().*R.^3.*N);
disp(PS);
DSW =2.4-(2.4*4/3.*R.^3/(75^2*300)-(pi()*4/3.*(R.^3-r.^3)+1.5*pi()*2.*R*l^2)*2.5/(pi().*75^2*300)).*N.*PS;
disp(DSW);
plot(R*2,DSW);
xlabel('R'), ylabel('SW'), title('SW Graph');grid on;
legend('R=12.5,r=11.5') %可依次设置成你想要的名字
end
