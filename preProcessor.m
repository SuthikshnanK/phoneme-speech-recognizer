%{
    Preprocessing:

    Functionally identical to Preprocessing.mlx, please see that file for in depth
    comments on what this function does.
%}

function [averageSound] = preProcessor(fileName)
    [y, fs] = audioread(fileName);
    y = y(:,2); % Stereo -> Mono Conversion
    duration = (length(y)-1)/fs;
    
    clear("normalizedYs")
    normalizedYs = {0, 0, 0, 0, 0, 0};
    for i = 1:6
        normalizedYs{i} = normalizeAudio(y(floor(duration*((i-1)/6)*fs)+1:floor(duration*(i/6)*fs)));
    end
    max = 0;
    for i = 1:6
        idx = find(movmean(abs(normalizedYs{i}),[500,500])>(2*10^-3));
        id0 = idx(1);
        idend = idx(end);
        normalizedYs{i} = normalizedYs{i}(id0:idend);
        if(length(normalizedYs{i})>max)
            max = length(normalizedYs{i});
        end
    end

    avgfft = 0;
    for i = 1:6
        normalizedYs{i} = [normalizedYs{i}; zeros(max-length(normalizedYs{i}),1)];
        avgfft = fft(normalizedYs{i},fs);
    end
    averageSound = ifft(avgfft);
end

