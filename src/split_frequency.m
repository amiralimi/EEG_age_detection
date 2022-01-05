clear; clc;
data = load('data/clean/clean_trials.mat');
fs = 500;
result = apply_bandpass(data.trials, fs);
save('data/clean/clean_trials_splited.mat', 'result');
