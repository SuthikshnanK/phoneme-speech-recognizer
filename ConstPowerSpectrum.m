

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
function   [floc,weights] = ConstPowerSpectrum(wordName,fileName) 

N = 2^12;
fs = 44100;
phonemes = MakePhonemes(N, true);
[wordTime, wordFreq] = MakeWordFromSample(wordName,fileName,N,false);

N2 = 2^8;

wordResample = resample(wordTime, N2, length(wordTime));
floc(5) = 0;
weights(5)=0;
for i = 1:6
    phonResample = resample(phonemes(i).Time, N2, length(phonemes(i).Time));

   
    
    [Cxy,f] = mscohere(wordResample,phonResample,[],[],[],fs); % Magnitude Squared Coherence
    Pxy = cpsd(wordResample,phonResample,[],[],[],fs); % Cross Power Spectral Density
    phase = -angle(Pxy)/pi*180;
    
    [pks,locs] = findpeaks(Cxy,'MinPeakHeight',0.75);
    
    
   
    temp = 0;
 for k = 1:length(locs)
     
      if (locs(k) >= (length(Cxy)/2))
            weight(i) = 2;
        end
        if (locs(k) < (length(Cxy)/2))
             weight(i) = 1;
         end
     
     
                if (weight(i)==1 && temp ==0)
                    temp = 1;
                
                elseif (weight(i)==2 && temp ==0)
                    temp = 2;
                
                elseif ((weight(i)==2 && temp > 0 && temp ~= 2)||(weight(k)==1 && temp > 0 && temp ~= 1))
                    temp = 3;
                
                else
                    
                end
                
                 weights(i) = temp;
            end
            
            
    
     if (length(pks)>0)
     temp2 = max(pks);
      floc(i) = temp2(1);
     else
       floc(i) = 0;  
     end
     end
     
end

