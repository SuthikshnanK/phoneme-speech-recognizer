%{
    Graph Frequency

    Simply graphs the absolute value of the fft of a signal
%}

function GraphFreq(signal, name)
    figure(); hold on
    xlabel('k');
    ylabel('magnitude');
    title(name);
    plot(abs(signal), '-r')
    hold off
end