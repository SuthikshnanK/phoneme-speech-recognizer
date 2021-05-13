%Master Function -

function [possiblePSpellings,ValidWords] = MasterFunction2(wordName,fileName)

 [phonemesIndex,weights] = determinePossiblePhonemes(wordName,fileName); 
 
 [phonemeArray] = processPhonemesToAPI(phonemesIndex, weights);
 
 [possiblePSpellings,ValidWords] = QueryApi(phonemeArray);
end