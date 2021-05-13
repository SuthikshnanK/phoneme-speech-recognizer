%{
    Make Word From Sample

    Generates an average word using the preprocessor then resamples the
    word and generates an FFT for that resampled word.

    Parameters:
    - name : name of the word for the graphs to display
    - fileName : directory and filename of the file ie: Words\Cake.mp3
    - N : N for the N-Pt FFT
    - suppressGraphs : boolean which suppresses Graph outputs for non
    testing purposes
%}

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

