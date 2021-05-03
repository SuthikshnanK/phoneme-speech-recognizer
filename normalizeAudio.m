function [yNorm] = normalizeAudio(y)
    [pks, locs] = findpeaks(abs(y));
    scale = max(pks);
    yNorm = y/scale;
end

