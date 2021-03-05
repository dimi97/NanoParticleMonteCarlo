function myArray=iterate(tMax,nMax,initA)
    %Preallocation and Initialization
NA=zeros(1, tMax);
NA(1)=initA;

%iterate through time
tic
for t=2:tMax  
   if rand>NA(t-1)/nMax
       NA(t)=NA(t-1)+1;
   else
       NA(t)=NA(t-1)-1;
   end      
end
toc
myArray=NA;
end