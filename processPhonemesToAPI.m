function [phonemeArray] = processPhonemesToAPI(phonemeIndex, weights)

    phonemeArray = [0, 0, 0];
    
    for i = 1:length(weights)
        switch(weights(i))
            case 1
                % Left
                if phonemeArray(1) == 0
                    phonemeArray(1) = phonemeIndex(i);
                elseif(ismember(9,phonemeIndex) && ismember(7,phonemeIndex))
                    phonemeArray(1) = 9; 
                elseif(ismember(14,phonemeIndex) && ismember(2,phonemeIndex))
                    phonemeArray(1) = 2;
                end
            case 2
                % Right
                if phonemeArray(3) == 0
                    phonemeArray(3) = phonemeIndex(i);
                elseif(phonemeIndex(i) < phonemeArray(3))
                    phonemeArray(3) = phonemeIndex(i);  
                end
            case 3
                % Both Sides
                phonemeArray(1) = phonemeIndex(i);
                phonemeArray(3) = phonemeIndex(i);
            case 4
                % Middle
                phonemeArray(2) = phonemeIndex(i);
        end
    end

end