function QM=QuantityMatrix(BigR,MinR)  %小球数量计算，可应用于矩阵

BigArea = pi()*BigR.^2;  %大圆面积
MinArea = pi()*MinR.^2;  %小圆面积
BestNumber = fix(BigArea./MinArea); %最理想情况小圆个数，此处没有输出

n0 = fix((pi*2*(BigR - MinR))/(2*MinR));%计算第1层小球个数
N=n0;
i=1;

while( BigR-(1+i*2)*MinR>=0)
    ni =fix((pi*2*(BigR - (1+i*2)*MinR)/(2*MinR)) );%计算第i层小球个数（i>1）
    i=i+1;
    N=N+ni;
end
    QM=N*fix((300/2./MinR)*1.266);
     fprintf('当R=%d时小球总个数为：%d\n',MinR,QM);
