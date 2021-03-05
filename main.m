% ************************************
% * Monte Carlo *
% * Pozoukidis Dimitrios 15016 *
% * CP 2020/2021 *
% ************************************

%myCpu Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz   3.60 GHz
%Average time for each simulation: Elapsed time is 0.032479 seconds.

tMax=1000000; 
maxParticles=[700,12000,130000];

%Calculate Name Ratio
ratio=calcRatio('Dimitrios','Pozoukidis');

%Run for different max Particles
for i=1:3
    %Initial Particles in Section A for exe A
    initAA=maxParticles(i);
    
    %Initial Particles in Section A for exe B
    initAB=round(maxParticles(i)*(ratio/(ratio+1)));
    
    %make graph comparing exe A and B.
    A=compGraph(tMax,maxParticles(i),initAA,initAB); 
end

