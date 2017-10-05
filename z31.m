br = [1 0.618 1];   
ar = 1;
n =  512;   
fs = 200;
figure(31);
[h,w] = freqz(br, ar, n, fs);
mag = abs(h); 
phase = angle(h)*180/pi;
subplot(2,1,1), plot(w/(2*pi)*fs, mag), grid on;
title('АЧХ');
xlabel('fs'), ylabel('Амплітуда, мкВ');
subplot(2,1,2), plot(w/(2*pi)*fs, unwrap(phase)), grid on;
title('ФЧХ');
xlabel('fs'), ylabel('Фаза');
disp('Нулі режекторного фільтру');
xr = roots(br)
figure(311);
zp = zplane(xr);
disp('Передавальна функція');
H = filt (br, ar)

