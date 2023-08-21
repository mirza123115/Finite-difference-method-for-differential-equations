clear all
close all
clc

r= linspace(5,8,100);
dr=r(2)-r(1);
a=eye(100,100);
for i=1:98;
  ui_m1=1/(dr^2);
  ui=(-2/power(dr,2))-(1/(dr)*(5+i*dr))-(1/power((5+i*dr),2));
  ui_p1=(1/power(dr,2))+(1/(dr)*(5+i*dr));
  a(i+1,[i i+1 i+2])=[ui_m1 ui ui_p1];
end
c=zeros(100,1);
c(1)=.0038731;
c(100)=.0030769;
u=inv(a)*c;
plot(r,u)
title('solution of differential equation using finite difference method')
xlabel('r axis')
ylabel('u axis')
