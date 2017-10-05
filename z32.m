fs = 60;
ecg = load('ecg2x60.dat');  
ecgD = detrend(ecg);
ecgFilt = filter(br, ar, ecgD);
t = (0:length(ecgD)-1)/fs;      
figure(32);
subplot(2,1,1), plot(t, ecgD), 
xlim([2 7.3]);
title('Нефільтрований сигнал');
xlabel('Час, t'),
ylabel('Амплітуда, мкВ');
subplot(2,1,2), plot(t, ecgFilt), 
xlim([2 7.3]);
title('Фільтрований сигнал');
xlabel('Час, t'), ylabel('Амплітуда, мкВ');
