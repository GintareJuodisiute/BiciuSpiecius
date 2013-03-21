function fsincos =sincos(x);
% Garzina funkcijos: f=sin(x)+cos(x) reiksme
% Paliedimas: f=sincos(x), kur x vienmatis vektorius
% Pvz. f=sincos(1.0);
% Leistinoji sritis (poaibis apibrezimo srities): [-10,10];
fsincos=sin(x)+ cos(x);
x=[-10:0.2:10];
fsincos=sin(x)+ cos(x);
plot(x,fsincos)
end