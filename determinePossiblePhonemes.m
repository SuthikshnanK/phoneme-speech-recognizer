
%{
   This function takes an input of the auido file determines the possible
   phonemes associated. It first determines a list of possible constenants
   and weights according to their aproximate location in the word along
   with assinging the peaks to usable phenome indices. 
   
   Then uses time correlation to get the estimate of the vowels present in
   the word with the weighting placed on the one with the highest peak
   correlation and outputs two arrays of equal length outling the possible
   phonemes in the file and the weights of their position in the word.


%} 



function [phonemesIndex,weights] = determinePossiblePhonemes(wordName,fileName)

j=1;
phonemesIndex(j) = 0;
weights(j) = 0;

[floc,weight] = ConstPowerSpectrum(wordName,fileName); 

    for i = 1:6 
       
   
        if (floc(i) > .75)
           
            switch i
                case 1
                     phonemesIndex(j) = 2;
                case 2
                     phonemesIndex(j) = 4;
                case 3
                     phonemesIndex(j) = 7;
                case 4
                     phonemesIndex(j) = 9;
                case 5
                     phonemesIndex(j) = 13;
                case 6
                     phonemesIndex(j) = 14;
                otherwise
                    phonemesIndex(j) = 0;
            end
            
          weights(j) = weight(i);
          j = j+1;
        
        end
    end

    
possibleVowels = VowelTimeCorrelation(wordName,fileName);
[possibleVowel,index]= max(possibleVowels);

            switch index(1)
                case 1
                     phonemesIndex(j) = 25;
                case 2
                     phonemesIndex(j) = 26;
                case 3
                     phonemesIndex(j) = 31;
                case 4
                     phonemesIndex(j) = 32;
                case 5
                     phonemesIndex(j) = 34;
                otherwise
                    phonemesIndex(j) = 0;
            end
       weights(j) =4; 
end