function phenomes = MakePhenomes(N, suppressGraphs)
    
    phenomes = Phenome.empty;

    phenomes(1) = MakePhenomeFromSample(2, 'Phonemes\2.mp3', N, suppressGraphs);
    phenomes(2) = MakePhenomeFromSample(4, 'Phonemes\4.mp3', N, suppressGraphs);
    phenomes(3) = MakePhenomeFromSample(7, 'Phonemes\7.mp3', N, suppressGraphs);
    phenomes(4) = MakePhenomeFromSample(13, 'Phonemes\13.mp3', N, suppressGraphs);
    phenomes(5) = MakePhenomeFromSample(14, 'Phonemes\14.mp3', N, suppressGraphs);
    phenomes(6) = MakePhenomeFromSample(25, 'Phonemes\25.mp3', N, suppressGraphs);
    phenomes(7) = MakePhenomeFromSample(31, 'Phonemes\31.mp3', N, suppressGraphs);
    phenomes(8) = MakePhenomeFromSample(32, 'Phonemes\32.mp3', N, suppressGraphs);
    
end


function phenome = MakePhenomeFromSample(ID, fileName, N, suppressGraphs)    
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
    
    phenome = Phenome(ID, yFFT1,averagePhoneme);
end

