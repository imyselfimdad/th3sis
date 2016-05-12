% clearing all variable, screen and closing all figures
clear all
close all
clc

% Generating random data for user 1
x1 = randc(1,1000);
for i=1:1000
    if x1(i) > 0
        x1(i) = 1;
    else
        x1(i) = -1;
    end
end

% Generating random data for user 2
x2 = randc(1,1000);
for i=1:1000
    if x2(i) > 0
        x2(i) = 1;
    else
        x2(i) = -1;
    end
end

% clearing dummy variables
clear i;

% transmitting power of users
p1 = 0.5;   % user 1's power level
p2 = 1;     % user 2's power level

% data sysmbols
d1 = p1 * x1;   % user 1's data
d2 = p2 * x2;   % user 2's data

% total transmitted data
d = d1 + d2;

% check the following lines...
x1(x1<0)=-1;
x1(x1>0)=1;