figure(23);
subplot(3,1,1),
plot(ecgDetrend),
xlim([2900 3300]);
title('Нефільтрований сигнал');
xlabel('Час, t'), ylabel('Амплітуда, мкВ ');
subplot(3,1,2), 
plot(ecgf5), 
xlim([2900 3300]);
title('Поліноміальний фільтр');
xlabel('Час, t'), ylabel('Амплітуда, мкВ ');
subplot(3,1,3),
plot(y), 
xlim([2900 3300]);
title('Фільтр Хеннінга');
xlabel('Час, t'), ylabel('Амплітуда, мкВ ');
