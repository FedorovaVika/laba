fs = 1000;
bd1 = [1 -1];       
ad1 = 1;
bd2 = [1 -1]/2;
ad2 = 1;
n = 512;         
figure(411);
[h1,w1] = freqz(bd1, ad1, n);
mag1 = abs(h1);
phase1 = angle(h1)*180/pi;
subplot(2,1,1), plot(w1/(2*pi)*fs, mag1), grid on;
title('АЧХ №1');
xlabel('fs'), ylabel('Амплітуда');
subplot(2,1,2), plot(w1/(2*pi)*fs, unwrap(phase1)), grid on;
title('ФЧХ №1');
xlabel('fs'), ylabel('Фаза');
figure(412);
[h2,w2] = freqz(bd2, ad2, n);
mag2 = abs(h2);
phase2 = angle(h2)*180/pi;
subplot(2,1,1), plot(w2/(2*pi)*fs, mag2), grid on;
title('АЧХ №2');
xlabel('fs'), ylabel('Амплітуда');
subplot(2,1,2), plot(w2/(2*pi)*fs, unwrap(phase2)), grid on;
title('ФЧХ №2');
xlabel('fs'), ylabel('Фаза');
H1 = filt (bd1, ad1)
H2 = filt (bd2, ad2)
