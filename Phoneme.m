classdef Phoneme
    %Phoneme Summary of this class goes here
    %   Detailed explanation goes here
    
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