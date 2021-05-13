%{
    Plot Time
    
    A utility function to label and plot a time based signal.
%}

function PlotTime(signal, name)
    figure(); hold on
    xlabel('t');
    ylabel('Amplitude');
    title(name);
    plot(signal, '-b')
    hold off
end
