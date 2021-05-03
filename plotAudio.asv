function plotAudio(file)
    [y, fs] = audioread(file);
    t = 0:seconds(1/fs):seconds((length(y)-1)/fs);
    plot(t, y);
end

