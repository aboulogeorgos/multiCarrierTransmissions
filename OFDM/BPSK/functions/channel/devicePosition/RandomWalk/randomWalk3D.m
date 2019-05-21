%----------3D Random Walk Simulation-------------------------------------%

clc
close all;
clear all;
%------------------------------------------------------------------------%
simulationParameters;
Xi=0;
Yi=0;
Zi=0;
X(1:N)=0;
Y=X;
Z=Y;
X(1)=Xi;
Y(1)=Yi;
Z(1)=Zi;
%------------------------------------------------------------------------%
   figure(1)
 tic   
for i=2:N
    if(rand(1,1)>=0.5)
        X(i)=X(i-1)+step;
    else
        X(i)=X(i-1)-step;
    end
    if(rand(1,1)<=0.5)
        Y(i)=Y(i-1)+step;
    else
        Y(i)=Y(i-1)-step;
    end
    if(rand(1,1)>=0.5)
        Z(i)=Z(i-1)+step;
    else
        Z(i)=Z(i-1)-step;
    end
    
    
         plot3(X(i),Y(i),Z(i),'.','Markersize',10,'MarkerEdgeColor','r')
         hold on
         line([X(i-1) X(i)], [Y(i-1) Y(i)],[Z(i-1) Z(i)],'linewidth',1);
         axis([ -25 25 -25 25 -25 25])
         view([-32 30])
         grid on
         h=gca; 
         get(h,'fontSize') 
         set(h,'fontSize',12)
         xlabel('X','fontSize',12);
         ylabel('Y','fontSize',12);
         zlabel('Z','fontSize',12);
         title('3D Random Walk: Run 1','fontsize',14)
         fh = figure(1);
         set(fh, 'color', 'white'); 
         F=getframe;
         
end
%-------------------------------------------------------------------------
toc   
      movie(F)
%-------------------------------------------------------------------------
      