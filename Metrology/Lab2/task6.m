n=0:1:17;
c=8;
ni=0:0.001:17;
U=[3, 4, 5, 6, 7, 8.5, 9, 10, 9.5, 3, 4, 5, 6, 7, 8.5, 9, 10, 9.5 ]
U=U-7.25;
I=[0.015, 0.04, 0.075, 0.1,  0.11, 0.105, 0.09, 0.05, 0.01, 0.015, 0.04, 0.075, 0.1,  0.11, 0.105, 0.09, 0.05, 0.01];
I=I-0.061;
Ui=pchip(n, U, ni);
Ii=pchip(n, I, ni)

p=Ui.*Ii;
Pi=1/((3*c)*(p(1) + 4*(p(2)+p(4)+p(6)+p(8))+2*(p(3)+p(5)+p(7))+p(9)));
figure

plot(ni,Ii)


