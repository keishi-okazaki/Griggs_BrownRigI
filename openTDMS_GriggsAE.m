openfile = dir('*.tdms');

[zz,nn] = size(openfile);

for i = 1:zz %nn
    eval(['data',int2str(i),'= TDMS_getStruct(char(openfile(i).name))']); 
end
