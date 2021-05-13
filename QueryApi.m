function [possiblePSpellings,ValidWords] = QueryApi(phenomeorder)

GuessWord = "";
possiblePSpellings = "";
for i = 1:length(phenomeorder)
[guessID,phoneme,possibleLetters]  = decidePhoneme(phenomeorder(i));  
C(i,:) = {guessID,phoneme,possibleLetters};
possiblePSpellings = strcat(possiblePSpellings,phoneme);
GuessWord = strcat(GuessWord,possibleLetters(1));
end

Word = GetWordFromAPI(GuessWord);

ValidWords = ValidateArrayOfWords(Word,C);



end