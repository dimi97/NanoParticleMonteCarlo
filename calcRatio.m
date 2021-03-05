function ratio=calcRatio(ONstring,EPstring)

ONascii=double(ONstring);
EPascii=double(EPstring);

ON=sum(ONascii);
EP=sum(EPascii);

if ON<=EP
    ratio=ON/EP;
else 
    ratio=EP/ON;
end