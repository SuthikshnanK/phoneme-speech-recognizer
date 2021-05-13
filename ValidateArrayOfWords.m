
function [ValidWords ] = ValidateArrayOfWords(WORD,CellArray)
j=1;
ValidWords = ["null"];
for i = 1:size(WORD)
   possible = determineWordPossible(WORD{i,1},CellArray,1);
    if(possible)
        ValidWords(j) = WORD{i,1};
        j = j+1;
    end
    
end