function myGraph=compGraph(tMax,nMax,initAA,initAB)

%Iterate for initial conditions A,B
%function form: myArray=iterate(tMax,nMax,initA)
NA1=iterate(tMax,nMax,initAA);
NA2=iterate(tMax,nMax,initAB);


t = linspace(0,tMax);
y=(nMax/2)*(1+exp(-2*t/nMax));

figure
plot(NA1)
hold on
plot(nMax-NA1)
hold on
plot(t,y)
% comment next to lines to get exe A only.
hold on
plot(NA2)
titleString=sprintf('Simulation-Theory comparison NMAX=%d',nMax);
title(titleString)
xlabel('time (s)') 
ylabel('Number of particles') 
legend('N Section A','N Section B','(N/2)(1+e^{-2t/N})','N Section A exe-2B')

myGraph=1;
end