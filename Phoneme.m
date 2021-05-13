classdef Phoneme

    %{
        Phoneme
    
        A utility class used to store data in a digestible format for
        MATLAB to handle. Has deprecated Error Methods, but worth keeping
        to show our process as we found better metrics to find similarities
        between phonemes and a word.    
    %}
    
    properties
        ID
        FFT
        Time
    end
    
    methods
        function obj = Phoneme(ID_,FFT_,Time_)
            obj.ID = ID_;
            obj.FFT = FFT_;
            obj.Time = Time_;
        end
        
        function err = GetSquareError(obj, p)
            %gets the square error between this phoneme and seperate phoneme.
            err = abs(sum((p.FFT - obj.FFT).^2));
        end
        
        function err = GetError(obj, p_FFT)
            %gets the absolute error between this phoneme and seperate phoneme.
            err = (sum(abs(p_FFT - obj.FFT)));
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end