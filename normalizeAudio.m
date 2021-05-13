%{
    Normalize Audio

    Takes an audio signal y and normalizes it relative to its largest peak.
    That way the audio returned is a signal with amplitude 1. This is used
    to better compare the signals across the board.
%}
function [yNorm] = normalizeAudio(y)
    [pks, locs] = findpeaks(abs(y));
    scale = max(pks);
    yNorm = y./scale;
end

