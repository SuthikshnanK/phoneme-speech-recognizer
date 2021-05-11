function ispossible  = determineWordPossible(possibleWord,knownPhonemes,depth)

[n,m] = size(knownPhonemes);
Maxdepth=n;
possibleLetters = knownPhonemes{depth,3};

x = size(knownPhonemes);
for i= 1:x
    length = strlength(possibleLetters{i});
    substring = extractBetween(possibleWord,1,length);
    possible = contains(substring,possibleLetters{i});
    
    if(possible)
       if(depth == Maxdepth)
           ispossible = true;
           return;
       end
       possibleWordSub = extractBetween(possibleWord,length+1,strlength(possibleWord));
       ispossible = determineWordPossible(possibleWordSub,knownPhonemes,(depth+1));
       if(ispossible)
           return;
       end
       
    end
     
end

ispossible = false;

end