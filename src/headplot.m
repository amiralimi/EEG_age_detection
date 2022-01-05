clear;clc;

sensor_errors = load('data/clean/HC_models_sensor_errors.mat');
chaninfo = load('data/chaninfo.mat');

subplot(3, 2, 1);
topoplot(sensor_errors.delta, chaninfo.chanlocs);
title('Delta');

subplot(3, 2, 2);
topoplot(sensor_errors.theta, chaninfo.chanlocs);
title('Theta');

subplot(3, 2, 3);
topoplot(sensor_errors.alpha, chaninfo.chanlocs);
title('Alpha');

subplot(3, 2, 4);
topoplot(sensor_errors.beta, chaninfo.chanlocs);
title('Beta');

subplot(3, 2, 5);
topoplot(sensor_errors.gamma, chaninfo.chanlocs);
title('Gamma');

subplot(3, 2, 6);
topoplot(sensor_errors.broadband, chaninfo.chanlocs);
title('Broadband');

suptitle('HC Models Sensor Errors');
saveas(gcf, 'images/HC_models_sensor_errors.png');

sensor_errors = load('data/clean/PD_models_sensor_errors.mat');
chaninfo = load('data/chaninfo.mat');

figure;
subplot(3, 2, 1);
topoplot(sensor_errors.delta, chaninfo.chanlocs);
title('Delta');

subplot(3, 2, 2);
topoplot(sensor_errors.theta, chaninfo.chanlocs);
title('Theta');

subplot(3, 2, 3);
topoplot(sensor_errors.alpha, chaninfo.chanlocs);
title('Alpha');

subplot(3, 2, 4);
topoplot(sensor_errors.beta, chaninfo.chanlocs);
title('Beta');

subplot(3, 2, 5);
topoplot(sensor_errors.delta, chaninfo.chanlocs);
title('Gamma');

subplot(3, 2, 6);
topoplot(sensor_errors.broadband, chaninfo.chanlocs);
title('Broadband');

suptitle('PD Models Sensor Errors');
saveas(gcf, 'images/PD_models_sensor_errors.png');