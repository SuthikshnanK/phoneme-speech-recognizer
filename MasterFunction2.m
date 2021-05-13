function [possiblePSpellings,ValidWords] = MasterFunction2(wordName,fileName)

 [phonemesIndex,weights] = determinePossiblePhonemes("Cake","Words\Cake.mp3");
 
 [phonemeArray] = processPhonemesToAPI(phonemesIndex, weights);
 
 [possiblePSpellings,ValidWords] = QueryApi(phonemeArray);
 
end