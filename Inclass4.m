%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 
filename=('inclass4%1.txt');
fid=fopen(filename,'w');
fprintf(fid,'Random numbers 1\n');
dlmwrite(filename,random_1,'-append');
fid=fopen(filename,'a')
fprintf(fid,'Random numbers 2\n');
dlmwrite(filename,random_2,'-append')
fclose(fid)

fid=fopen(filename,'r');
for i=1:2;
    line1=fgetl(fid);
end
varl=strsplit(line1,',')
varlnum=cellfun(@str2num,varl)
    

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 
function result=grtrtten(x);
 y=sum(sum(x));
 result=y>=10;
 