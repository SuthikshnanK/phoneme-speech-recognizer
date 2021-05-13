%{
    QueryAPI

    Simply takes the phoneme order then generates a word guess based on
    that order. It takes this guess and sends it into the API to fetch the
    potential words it results in.
%}

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