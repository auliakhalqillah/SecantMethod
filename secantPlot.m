% This matlab program is used to plot results from:
%
% secant.f95
%
% By: Aulia Khalqillah,S.Si (2019)

% Secant
data = load('secant.txt');
iter = data(:,1);
root = data(:,6);
root = root(end);
fn = data(:,7);
fn = fn(end);
error = data(:,9);

% Function
x = -3:0.1:3;
f = x.^2 - 2*x + 1;

figure(1)
plot(x,f,'r','linewidth',2)
hold on
plot([root root],[fn fn],'.b','markersize',30)
legend('Function','Root - Numerical Secant','location','NorthWest','location','best')
title('FINDING ROOT USING SECANT METHOD')
xlabel('X')
ylabel('Function')
text(-2.5,12,'f = x^2-2*x+1', 'fontsize', 20)
grid minor

figure(2)
plot(iter,error,'b','linewidth',2.)
xlabel('Iteration')
ylabel('Error (%)')
title('Error of secant method for each iteration')
grid minor
