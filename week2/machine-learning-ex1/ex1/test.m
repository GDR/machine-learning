n = 100;
 x = sort(rand(n,1)*5-1);
 y = 1+0.5*sin(x) + 0.1*randn(size(x));
 F = [ones(n,1),sin(x(:))];
 [p,e_var,r,p_var,y_var] = LinearRegression(F,y);
 yFit = F*p;
 figure()
 plot(x,y,'+b',x,yFit,'-g',x,yFit+1.96*sqrt(y_var),'--r',x,yFit-1.96*sqrt(y_var),'--r')
 title('y = p1 + p2*sin(x) by linear regression')
 legend('data','fit','+/-95%')
 grid on
