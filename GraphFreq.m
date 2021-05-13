%{
    Graph Freq
%}

function GraphFreq(signal, name)
    figure(); hold on
    xlabel('k');
    ylabel('magnitude');
    title(name);
    plot(abs(signal), '-r')
    hold off
end