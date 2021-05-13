function [wordTime, wordFreq] = MakeWordFromSample(name, fileName, N, suppressGraphs)
    [averageWord] = preProcessor(fileName);
   
    y1Len = length(averageWord);
    y1_resample = resample(averageWord, N, y1Len);
    yFFT1 = abs(fftshift(fft(y1_resample)));

    if(~suppressGraphs)
        figure();
        hold on;
        subplot(1,2,1);
        plot(averageWord, '-b');
        xlabel('t');
        ylabel('Amplitude');
        title("Word "+name+" Time");

        subplot(1,2,2);
        plot(abs(yFFT1), '-r')
        xlabel('k');
        ylabel('magnitude');
        title("Word "+name+ " FFT");
        hold off;
    end
    
    wordTime = averageWord;
    wordFreq = yFFT1;
end

