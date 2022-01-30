l=2;%计算小球体积为总体积30%情况下，随着小球直径的增加，比重的变化曲线
R=(2.5:0.5:75);%半径
r=R-1;%内径，厚度为1mm
N=QuantityMatrix(75,R);%中空体数量，引用了QuantityMatrix函数
PS=0.5.*pi().*75^2*300./(4/3.*pi().*R.^3.*N);%相同数量小球所占体积，反算出混凝土试件纯体积
disp(PS);%在命令行显示结果
DS =2.3-(2.3*4/3.*R.^3/(75^2*300)-(pi()*4/3.*(R.^3-r.^3)+1.5*pi()*2.*R*l^2)*2.5/(pi().*75^2*300)).*N.*PS;%直径和比重的关系，考虑的中空体肋的存在
disp(DS);%在命令行显示结果
plot(R*2,DS);%绘图
xlabel('Diameter (mm)'), ylabel('Specific Weight (g/cm3)'), title('Diameter-Specifi Weight Graph');grid on;%直线图参数