fc = 1;
fcUnits = 'GHz';
d0 = 1;
d0Units='m';
L = 0;
n = 2;
d=[0.1:0.1:100];
dUnits='m';

xl = ['d (', dUnits,')'];

cd ..
[ PLdB2 ] = logNormalPathlossModel( fc, fcUnits, d0, d0Units, L, n, d, dUnits );
cd('Examples')


n = 3;


cd ..
[ PLdB3 ] = logNormalPathlossModel( fc, fcUnits, d0, d0Units, L, n, d, dUnits );
cd('Examples')


n = 4;


cd ..
[ PLdB4 ] = logNormalPathlossModel( fc, fcUnits, d0, d0Units, L, n, d, dUnits );
cd('Examples')

figure
plot(d,PLdB2)
hold on
plot(d,PLdB3)
plot(d,PLdB4)
xlabel(xl)
ylabel('Path loss (dB)')
legend('n=2', 'n=3', 'n=4')