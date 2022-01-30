function Q=Quantity(BigR,MinR) %计算小球数量

BigArea = pi()*BigR^2;  %大圆面积
MinArea = pi()*MinR^2;  %小圆面积
BestNumber = fix(BigArea/MinArea); %最理想情况小圆个数
fprintf('BestNumber=%d\n',BestNumber);

n0 = fix((pi*2*(BigR - MinR))/(2*MinR)) ;%计算第1层小球个数
N=n0;
i=1;
fprintf('第%d层小球数为:%d;;',i,N);

while( BigR-(1+i*2)*MinR>=0)
    ni = fix((pi*2*(BigR - (1+i*2)*MinR)/(2*MinR)) );%计算第i层小球个数（i>1）
    i=i+1;
    fprintf('第%d层小球数为:%d;;',i,ni)
    N=N+ni;
end
    Q=N*fix((300/2/MinR)*1.266);
    fprintf('每层小球总个数为：%d\n',N);
    fprintf('当R=%d时小球总个数为：%d\n',MinR,Q);