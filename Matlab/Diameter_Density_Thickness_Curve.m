
clc;
clear all;
%计算小球体积为总体积30%情况下，随着小球直径的增加，比重的变化曲线。素混凝土密度2.4，陶瓷密度2.5，厚度为0.5-4mm。试件直径150mm，高度300mm。
R=(5:1:40);
T=(0.5:0.1:4);
[X, Y] = meshgrid(R,T);
%NQ=QuantityMatrix(75,R);%根据求出最大小球数量
PS=0.2655.*pi().*75^2*300./(4/3.*pi().*R.^3);%总体积为30%的情况下，球体个数
disp(PS);
DS =2.4-4/3.*PS.*(X.^3.*2.4-(X.^3-(X-Y).^3).*2.5)/(75.^2.*300);
mesh(X*2,Y,DS);
xlabel('Diemeter'), ylabel('Thickness'), zlabel('Density'),title('Diemeter-Density Graph');grid on;hold on;
%DS =2.4-4/3.*PS.*(X.^3.*2.4-(X.^3-(X-Y).^3).*7.8)/(75.^2.*300);
%surf(X*2,Y,DS);hold on;
%ok=pi().*((X.^2-(X-Y).^2)*500-X.^2.*40);
%colormap(parula(5));
%mesh(R*2,T,ok);