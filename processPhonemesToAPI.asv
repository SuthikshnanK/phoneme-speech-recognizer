function [phonemeArray] = processPhonemesToAPI(phonemeIndex, weights)

    phonemeOrder = {0, 0, 0, 0, 0};

    for(i = 1:length(weights))
        switch(weights(i))
            case 1
                % Left
                if phonemeOrder{1} ~= 0
                    phonemeOrder{1} = phonemeIndex(i);
                else
                    phonemeOrder{2} = phonemeIndex(i);
                end
            case 2
                % Right
                if phonemeOrder{5} ~= 0
                    phonemeOrder{5} = phonemeIndex(i);
                else
                    phonemeOrder{4} = phonemeIndex(i);
                end
            case 3
                % Both Sides
                phonemeOrder{2} = phonemeIndex(i);
                phonemeOrder{4} = phonemeIndex(i);
            case 4
                % Middle
                phonemeOrder{3} = phonemeIndex(i);
        end
    end

    phonemeArray = [];
    for(i = 1:length(phonemeOrder))
        if(phonemeOrder{i} ~= 0)
            phonemeArray(end+1) = phonemeOrder{i};
        end
    end

end