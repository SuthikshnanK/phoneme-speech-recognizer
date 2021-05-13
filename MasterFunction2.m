
%{

  Master Function 

    First calls determinePossiblePhonemes and given a the correct word name
    an a file name of the calibrated audio recoring of the word and returns
    the indices  of the phoneme array and their weights as an estimate of
    where they occur in the words.
    
    Then processes the indicies and weights using processPhonemesToAPI
    inorder to get an estimate of a vaild letter word and output an array
    of phoneme indices in the order that they apear in the word

    Lastly it takes the phoneme array and queries the dictionary API and
    the recusivly checks the validity of of each word and gives a list of
    valid words and the the phoneme spelling
 
  
%}    

function [possiblePSpellings,ValidWords] = MasterFunction2(wordName,fileName)

 [phonemesIndex,weights] = determinePossiblePhonemes(wordName,fileName); 
 
 [phonemeArray] = processPhonemesToAPI(phonemesIndex, weights);
 
 [possiblePSpellings,ValidWords] = QueryApi(phonemeArray);
end