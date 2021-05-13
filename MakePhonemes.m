%{
    Make Phonemes
    
    A utility function to generate all the phonemes that we recorded and
    process them into their averaged formats.

    Make Phoneme From Sample

    Another utility function that resamples, splits and averages the
    phoneme signals. If suppressGraphs is true then it will not display any
    graphs.
%}

function phonemes = MakePhonemes(N, suppressGraphs)
    
    phonemes = Phoneme.empty;

    phonemes(1) = MakePhonemeFromSample(2, 'Phonemes\2.mp3', N, suppressGraphs);
    phonemes(2) = MakePhonemeFromSample(4, 'Phonemes\4.mp3', N, suppressGraphs);
    phonemes(3) = MakePhonemeFromSample(7, 'Phonemes\7.mp3', N, suppressGraphs);
    phonemes(4) = MakePhonemeFromSample(9, 'Phonemes\9.mp3', N, suppressGraphs);
    phonemes(5) = MakePhonemeFromSample(13, 'Phonemes\13.mp3', N, suppressGraphs);
    phonemes(6) = MakePhonemeFromSample(14, 'Phonemes\14.mp3', N, suppressGraphs);
    phonemes(7) = MakePhonemeFromSample(25, 'Phonemes\25.mp3', N, suppressGraphs);
    phonemes(8) = MakePhonemeFromSample(26, 'Phonemes\26.mp3', N, suppressGraphs);
    phonemes(9) = MakePhonemeFromSample(31, 'Phonemes\31.mp3', N, suppressGraphs);
    phonemes(10) = MakePhonemeFromSample(32, 'Phonemes\32.mp3', N, suppressGraphs);
    phonemes(11) = MakePhonemeFromSample(34, 'Phonemes\34.mp3', N, suppressGraphs);
    
end


function phoneme = MakePhonemeFromSample(ID, fileName, N, suppressGraphs)    
    [averagePhoneme] = preProcessor(fileName);

   
    y1Len = length(averagePhoneme);
    y1_resample = resample(averagePhoneme, N, y1Len);
    yFFT1 = abs(fftshift(fft(y1_resample)));
    
    if(~suppressGraphs)
        figure();
        hold on;
        subplot(1,2,1);
        plot(averagePhoneme, '-b');
        xlabel('t');
        ylabel('Amplitude');
        title("Phoneme "+ID+" Time");

        subplot(1,2,2);
        plot(abs(abs(yFFT1)), '-r')
        xlabel('k');
        ylabel('magnitude');
        title("Phoneme "+ID+ " FFT");
        hold off;
    end
    
    phoneme = Phoneme(ID, yFFT1,averagePhoneme);
end

