%determineWordPossible takes an in input of of a possible word to test, the
%cell array pertaining to the phonomes recovered from the comparision, and
%the phomeme index of in the cell array we testing(the first call should
%always be one). It takes these inputs and recursivly determines if the
%given word is a valid in comparison to the possible spellings of the
%phonemes. 

%input:
%possibleWord(string)
%knownPhonemes(cell array{Phoneme#,phonemeTag,ArrayOfSpellings])
%depth(int)
%output: 
%ispossible(bool) 

function ispossible  = determineWordPossible(possibleWord,knownPhonemes,depth) 

[n,m] = size(knownPhonemes); %Determine the size of the knownPhonemes CellArray
Maxdepth=n; %Get the maximum number of phenomes int the array
possibleLetters = knownPhonemes{depth,3}; %Get the array of possible letters at current depth

x = size(knownPhonemes); %number of knownPhonemes
for i= 1:x % go through each of the known Phonemes
    possible = false; % Intialize possible as false
    length = strlength(possibleLetters{i}); % find length of the current possible spelling string 
    wordLength = strlength(possibleWord); % find length of of possible word string
    if (wordLength >= length) % if Wordlength is smaller then the length the word cannot be valid for this spelling
    substring = extractBetween(possibleWord,1,length); % get a substring the of the possible word the same length as the possible spelling of phoneme
    possible = contains(substring,possibleLetters{i}); % check if the two substrings are equal
    end 
    if(possible) %if the two substrings are equal 
       if(depth == Maxdepth) %if we have gone through all possible strings
           ispossible = true; %return true 
           return;
       end
       possibleWordSub = extractBetween(possibleWord,length+1,strlength(possibleWord)); %Get the rest of the string not checked
       ispossible = determineWordPossible(possibleWordSub,knownPhonemes,(depth+1)); %Recursively call the function with the substring as the possible word and with depth +1
       if(ispossible) %If all the substrings are true return true
           return;
       end
       
    end
     
end

ispossible = false; %If no possible spellings of the current phoneme are present in the word return false

end