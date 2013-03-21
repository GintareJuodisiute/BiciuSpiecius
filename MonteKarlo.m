% Monte Carlo (Random Search) motodo realizacija
% 1. Sugeneruojame 100 atsitiktiniu tasku intervale [-10:10]
% 2. Surandame, kuriame funkcija igyje didziausia (maziausia) reiksme
%rand(1,100) sugeneruoja skaicius is intervalo [0;1] ir ju yra 100.
a=-10;
b=10;
x=a + (b-a).*rand(100,1);% Sugeneruoja skaicius intervale (-10;10).
f=sincos(x);
[fMin,indMin]=min(f);% Randamas maximumas ir jo indeksas
[fMax,indMax]=max(f);% Randamas minimumas ir jo indeksas
xMin=x(indMin);
xMax=x(indMax);
fprintf('Surastas min = %6.4f taske x = %6.4f\n ', fMin,xMin)
fprintf('Surastas max = %6.4f taske x = %6.4f\n ', fMax,xMax)
grafikas