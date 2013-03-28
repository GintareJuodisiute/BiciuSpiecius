function fsincos2 =sincos2(x);
% Garzina funkcijos: f=sin(x(1))+cos(x(2)) reiksme
% Paliedimas: f=sincos2(x), kur x vienmatis vektorius
% Pvz. f=sincos2([1.0, 1.0]); jeigu uzdetume kabliataski,tai detu i
% stulpeli
% Leistinoji sritis (poaibis apibrezimo srities): [-10,10]^2 arba ([-10,10]x[-10,10]);
fsincos2=sin(x(1))+ cos(x(2));
end