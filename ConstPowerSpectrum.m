

%{
    Power Spectrum & Spectral Coherence Identification

    Advantages: 
    - Returns more true-positive hits for consonants than any
    other metric of testing
    - Can identify correlations above a certain percent threshhold (in this
    case 75% accuracy)

    Disadvantages:
    - Not very useful for vowels, the data for vowels is incoherent and
    seemingly random for most words.
    - Still is relatively inaccurate for certain words, while more accurate
    for others (ie: not very consistent).
    
%}
function   floc = ConstPowerSpectrum(wordName,fileName) 

N = 2^12;
fs = 44100;
phonemes = MakePhonemes(N, true);
[wordTime, wordFreq] = MakeWordFromSample(wordName,fileName,N,false);

N2 = 2^8;

wordResample = resample(wordTime, N2, length(wordTime));
floc{5} = 0;
for i = 1:6
    phonResample = resample(phonemes(i).Time, N2, length(phonemes(i).Time));

    [P1, f1] = periodogram(wordResample,[],[],fs,'power');
    [P2, f2] = periodogram(phonResample,[],[],fs,'power');
    
    figure
    subplot(2,2,1)
    plot(wordResample,'k')
    ylabel('s1')
    grid on
    title('Time Series')
    subplot(2,2,3)
    plot(phonResample)
    ylabel('s2')
    grid on
    xlabel('Time (secs)')
    subplot(2,2,2)
    plot(f1,P1,'k')
    ylabel('P1')
    grid on
    axis tight
    title("Power Spectrum for Phoneme "+phonemes(i).ID)
    subplot(2,2,4)
    plot(f2,P2)
    ylabel('P2')
    grid on
    axis tight
    xlabel('Frequency (Hz)')
    
    [Cxy,f] = mscohere(wordResample,phonResample,[],[],[],fs); % Magnitude Squared Coherence
    Pxy = cpsd(wordResample,phonResample,[],[],[],fs); % Cross Power Spectral Density
    phase = -angle(Pxy)/pi*180;
    
    [pks,locs] = findpeaks(Cxy,'MinPeakHeight',0.75);
    
    figure
    subplot(2,1,1)
    plot(f,Cxy)
    title('Coherence Estimate')
    grid on
    hgca = gca;
    hgca.XTick = f(locs);
    hgca.YTick = 0.75;
    subplot(2,1,2)
    plot(f,phase)
    title('Cross-spectrum Phase (deg)')
    grid on
    hgca = gca;
    hgca.XTick = f(locs);
    xlabel('Frequency (Hz)')
    floc{i} = {pks,locs};
    
end

end