figure(23);
subplot(3,1,1),
plot(ecgDetrend),
xlim([2900 3300]);
title('�������������� ������');
xlabel('���, t'), ylabel('��������, ��� ');
subplot(3,1,2), 
plot(ecgf5), 
xlim([2900 3300]);
title('������������ ������');
xlabel('���, t'), ylabel('��������, ��� ');
subplot(3,1,3),
plot(y), 
xlim([2900 3300]);
title('Գ���� �������');
xlabel('���, t'), ylabel('��������, ��� ');
