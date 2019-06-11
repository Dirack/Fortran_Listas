clear, clc, close all

P10=load('potencial10.dat');
P5=load('potencial5.dat');
P1=load('potencial1.dat');
P05=load('potencial01.dat');
P01=load('potencial05.dat');
P001=load('potencial001.dat');

x=P10(:,1);

uq10=P10(:,2);
ud10=P10(:,3);

uq5=P5(:,2);
ud5=P5(:,3);

uq1=P1(:,2);
ud1=P1(:,3);

uq05=P05(:,2);
ud05=P05(:,3);

uq01=P01(:,2);
ud01=P01(:,3);

uq001=P001(:,2);
ud001=P001(:,3);

figure

subplot(2,3,1)
plot(x,uq10,'bo')
hold on
plot(x,ud10,'r+')
hold off
grid on
axis square
ylabel('U (V)')
xlabel('x (m)')
title('h=10 m')

subplot(2,3,2)
plot(x,uq5,'bo')
hold on
plot(x,ud5,'r+')
hold off
grid on
axis square
ylabel('U (V)')
xlabel('x (m)')
title('h=5 m')

subplot(2,3,3)
plot(x,uq1,'bo')
hold on
plot(x,ud1,'r+')
hold off
grid on
axis square
ylabel('U (V)')
xlabel('x (m)')
title('h=1 m')

subplot(2,3,4)
plot(x,uq05,'bo')
hold on
plot(x,ud05,'r+')
hold off
grid on
axis square
ylabel('U (V)')
xlabel('x (m)')
title('h=0.5 m')

subplot(2,3,5)
plot(x,uq01,'bo')
hold on
plot(x,ud01,'r+')
hold off
grid on
axis square
ylabel('U (V)')
xlabel('x (m)')
title('h=0.1 m')

subplot(2,3,6)
plot(x,uq001,'bo')
hold on
plot(x,ud001,'r+')
hold off
grid on
axis square
ylabel('U (V)')
xlabel('x (m)')
title('h=0.01 m')