data = outCopy.simout;
inc = 0;
ninc=1;
len = length(data);

for i = 1:len
    if ~(data(i,:) == 0)
        inc = inc + 1;
    end
end

output = zeros(inc, 1);


for i = 1:len-1
   if ~(data(i,:) == 0)
       output(ninc) = data(i,:);
       ninc = ninc + 1;
   end
end