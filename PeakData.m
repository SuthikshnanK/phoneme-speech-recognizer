classdef PeakData
    %PEAKDATA Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        peak
        loc
    end
    
    methods
        function obj = PeakData(peakHeight,peakLocation)
            obj.peak = peakHeight;
            obj.loc = peakLocation;
        end
        
        function outputArg = method1(obj,inputArg)
            
        end
    end
end

