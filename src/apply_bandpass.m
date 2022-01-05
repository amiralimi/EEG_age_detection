function output = apply_bandpass(signal, fs)
    output.delta = zeros(size(signal));
    output.theta = zeros(size(signal));
    output.alpha = zeros(size(signal));
    output.beta = zeros(size(signal));
    output.gamma = zeros(size(signal));
    output.raw = signal;
    for i = 1 : size(signal, 1)
        tic
        for j = 1 : size(signal, 3)
            output.delta(i, :, j) = bandpass(signal(i, :, j), [0.5 4], fs);
            output.theta(i, :, j) = bandpass(signal(i, :, j), [4 8], fs);
            output.alpha(i, :, j) = bandpass(signal(i, :, j), [8 12], fs);
            output.beta(i, :, j) = bandpass(signal(i, :, j), [12 30], fs);
            output.gamma(i, :, j) = bandpass(signal(i, :, j), [30 45], fs);
        end
        toc
        i
    end
end

