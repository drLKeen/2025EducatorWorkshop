%% Demonstration of Live Controls, Live Tasks, and Apps in MATLAB

% The true signal is a sine wave. We'll add adjustable noise.

x = linspace(0, 4*pi, 200)';
noiseLevel = 0.2; 
y = sin(x) + noiseLevel*randn(size(x));

figure
plot(x, y, 'b.', 'DisplayName', 'Noisy Data')
hold on
plot(x, sin(x), 'r', 'LineWidth', 1.5, 'DisplayName', 'True Signal')
legend('show')
xlabel('x')
ylabel('y')
title('Noisy Data vs. True Function')
grid on

%% Live Task: Smooth Data


%% Compare Smoothed Data
figure

plot(x, y_smooth, 'b', 'LineWidth', 1.5, 'DisplayName', 'Smoothed')
hold on
plot(x, sin(x), 'r--', 'LineWidth', 1.5, 'DisplayName', 'True Signal')
legend('show')
title('Data Before and After Smoothing')
xlabel('x')
ylabel('y')
grid on

%% Launch Curve Fitting App
cftool(x, y)
