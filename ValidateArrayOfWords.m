

%{
  ValidateArrayOfWords

   Take an input of an array of words and a cell array of the phenomes in order with the possible information and checks all of using the recursive
   function determineWordPossible and if the word is possible adds it to
   the output array.
   
  
%}    


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