function [x,y,z]=sampling(Big_R,Min_R,H,N)%Calculate random coordinates of hollow bodies.

H1=H-Min_R;
s=[];
i=1;
c=1; 
while c<500
    
    angle=rand(1,1)*2*pi; 
    r=sqrt(rand(1,1));
    tempx=(Big_R-Min_R).*r.*cos(angle);
    tempy=(Big_R-Min_R).*r.*sin(angle);
    tempz=H1.*rand(1)-H1/2;
    angle1=rand(1,1)*360;
    
    %If matrix s is empty, then store the first random value.
    if(isempty(s)==1)
        s(1,i)=tempx;
        s(2,i)=tempy;
        s(3,i)=tempz;
        i=i+1;
        c=c+1;
        x=tempx;y=tempy;z=tempz;
        fprintf('%d;',x);fprintf('%d;',y);fprintf('%d;',z);fprintf('%d;\n',angle1);
    end
    
    % If the matrix s is not an empty matrix, find the distance matrix l between each coordinate,
    %and store the coordinates with a distance greater than Min_R from all points
    if(isempty(s)==0)
        for j=1:i-1
            l(1,j)=sqrt(((tempx-s(1,j))^2)+((tempy-s(2,j))^2)+((tempz-s(3,j))^2));
            j=j+1;
        end
        
        if(isempty(find(l<2*Min_R,1))==1)  %Or size(find(l<2*Min_R),1)==0 means that the number of matrix l less than n is equal to 0
            s(1,i)=tempx;x=tempx;
            s(2,i)=tempy;y=tempy;
            s(3,i)=tempz;z=tempz;
            i=i+1; 
            fprintf('%d;',x);fprintf('%d;',y);fprintf('%d;',z);fprintf('%d;\n',angle1);
        end
        c=c+1;
    end
    if(i>=N+1)
        break;
    end
end
x=s(1,:);y=s(2,:);z=s(3,:);
scatter3(x,y,z,200,'o');xlabel('X'), ylabel('Y'),zlabel('Z'), title('Random position function');grid on;%Draw a scatter plot and name it
set(gca,'XTick',[-Big_R:15:Big_R]);set(gca,'YTick',[-Big_R:15:Big_R]);zlim([-H/2,H/2]);%Set the coordinate range