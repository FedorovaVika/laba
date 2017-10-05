fs = 1000;
ecg = load('ecg117.dat');   
ecgd1 = filter(bd1, ad1, ecg);
t1 = (0:length(ecgd1)-1)/fs; 
figure(421);
subplot(2,1,1), plot(t1, ecg),
xlim([1.2 1.8]);
title('Нефільтрований сигнал');
xlabel('Час, t'),
ylabel('Амплітуда, мкВ');
subplot(2,1,2), plot(t1, ecgd1),
xlim([1.2 1.8]);
title('Фільтрований сигнал');
xlabel('Час, t'), 
ylabel('Амплітуда, мкВ');
ecgd2 = filter(bd2, ad2, ecg);
t2 = (0:length(ecgd2)-1)/fs; 
figure(422);
subplot(2,1,1), plot(t2, ecg),
xlim([1.2 1.8]);
title('Нефільтрований сигнал');
xlabel('Час, t'), 
ylabel('Амплітуда, мкВ');
subplot(2,1,2), plot(t2, ecgd2),
xlim([1.2 1.8]);
title('Фільтрований сигнал');
xlabel('Час, t'), 
ylabel('Амплітуда, мкВ');

