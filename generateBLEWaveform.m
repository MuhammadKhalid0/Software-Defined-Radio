function [waveform,Fs] = generateBLEWaveform(sps)
%% Generating Bluetooth Low Energy waveform
% Bluetooth Low Energy configuration
% sps = 1;
symbolRate = 1000000;
% input bit source:
in = randi([0, 1], 1000, 1);


% Generation
waveform = bleWaveformGenerator(in, 'Mode', 'LE1M', ...
    'SamplesPerSymbol', sps, ...
    'ChannelIndex', 37, ...
    'AccessAddress', [0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0 1]');

Fs = sps * symbolRate; 

end