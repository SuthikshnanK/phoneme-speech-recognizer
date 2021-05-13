function phonemesIndex = determinePossiblePhonemes(wordName,fileName)


j=1;
phonemesIndex(j) = 0;


floc = ConstPowerSpectrum(wordName,fileName); 

    for i = 1:6 
        
        if floc{i} > .75
           
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
            

end