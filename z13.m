fs = 1000;
b = [1 2 1]/4;
a = 1;
n = 512;
ecg = load('ecg117.dat');
ecgDetr = detrend(ecg);
y = filter(b, a, ecgDetr);
t = (0:length(ecgDetr)-1)/fs;
figure(1);
subplot(3,1,1),plot(t,ecg), xlim([1.1 1.6]);
title('Нефільтрований сигнал');
xlabel('Час t'), ylabel('Амплітуда, мкВ ');
subplot(3,1,2),plot(t,ecgDetr), xlim([1.1 1.6]);
title('Без постійної складової');
xlabel('Час t'), ylabel('Aмлітуда, мкВ');
subplot(3,1,3),plot(t,y), xlim([1.1 1.6]);
title('Фільтрований сигнал');
xlabel('Час t '), ylabel('Aмплітуда, мкВ ');

