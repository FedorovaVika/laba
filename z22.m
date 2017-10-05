ecg = load('ecg117.dat');
ecgDetrend = detrend(ecg);
ecgf5 = filter(bp, ap, ecgDetrend);
t = (0:length(ecgDetrend)-1)/fs;
figure(22);
subplot(2,1,1),
plot(ecgDetrend),
xlim([2900 3300]);
title('�������������� ������');
xlabel('���, t'), 
ylabel('A������, ���');
subplot(2,1,2),
plot(ecgf5), 
xlim([2900 3300]);
title('Գ���������� ������');
xlabel('���, t'), 
ylabel('A������, ���');
