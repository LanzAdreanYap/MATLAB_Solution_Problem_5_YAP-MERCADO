n = -1:204;
x = input('Input a function, x(n): '); % Evaluate the values of x(n) from n = -1 to n = 204
for m=1:200 % i from 1 to 200 will serve as an index for x
    if m==1 %since there is no zero index for Matlab, initial value for i is 1
        X(m)=x(m+1); % Calls the (i+1)th value of x, so if i = 1, it calls the second value of x, which is function x when n = 0 and then it's stored in X
        Y(m)=-1.5*x(m+1)+2*x(m+2)-0.5*x(m+3); % Evaluate the function and the value is stored to Y
        
    elseif m>1 && m<=199 % for values of x when n is greater than 0, but less than or equal to 198
        X(m)=x(m+1);
        Y(m)=0.5*x(m+2)-0.5*x(m);
        
    elseif m==200 % for value of x when n is equal to 199
        X(m)=x(m+1);
        Y(m)=1.5*x(m+1)-2*x(m)+0.5*x(m-1);
        
    else % default wherein n is less then 0 or greater than 199
        X(m)=x(m+1);
        Y(m)=NaN;   
    end
end
% set a new range for n from 0 to 199
n = 0:199;
% display the graph using plot function
% plot the graph of X having a color of magenta for the lines and markers 
% then hold the plot to insert the second graph, Y
plot(n,X,'-om','markersize',2,'markerfacecolor','m'), hold,
% plot the graph of Y having a color of blue for the lines and markers
plot(n,Y,'-ob','markersize',2,'markerfacecolor','b'),
% set the axis limits
axis tight
% turn on the grid lines on the plot
grid on
% label the graph and insert legend for x(n) and y(n)
xlabel 'n'; ylabel 'x(n) and y(n)'; title 'Graphs of x(n) & y(n)';
legend('x(n)','y(n)');