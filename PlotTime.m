function PlotTime(signal, name)
    figure(); hold on
    xlabel('t');
    ylabel('Amplitude');
    title(name);
    plot(signal, '-b')
    hold off
end
