Path = output;

simp = 0;
maze = zeros(length(Path),1);
count=1;
skip= 0;
%%check condition 
while simp == 0
for i = 1:length(Path)
    if Path(i) == 66
        simp = 1;
    end
end



if simp == 1
     for i = 1:length(Path)
         temp1 = Path(i);
         if skip ==1
         skip=0;
         else
             if temp1 == 66
                 skip=1;
                 before= Path(i-1);
                 after = Path(i+1);

                    if before == 76 && after == 82
                    maze(count-1,:)= 66; 
                    end
                    if before == 76 && after == 83
                    maze(count-1,:)= 82; 
                    end
                    if before == 82 && after == 76
                    maze(count-1,:)= 66; 
                    end
                    if before == 83 && after == 76
                    maze(count-1,:)= 82; 
                    end
                    if before == 83 && after == 83
                    maze(count-1,:)= 66;
                    return
                    end
                    if before == 76 && after == 76
                    maze(count-1,:)= 83; 
                    end

             else
                 maze(count,:)=temp1;
                 count = count+1;
             end
        end
     end
     short = maze;
else
    short = maze;
end
end

input = short;