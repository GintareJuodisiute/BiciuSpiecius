% Monte Carlo (Random Search) motodo realizacija
% 1. Sugeneruojame 1000 atsitiktiniu tasku intervale [-10:10]^2
% 2. Surandame, kuriame funkcija igyje didziausia (maziausia) reiksme
%rand(1,100) sugeneruoja skaicius is intervalo [0;1] ir ju yra 100.
a=-10;
b=10;
n=2;% dimensija(matavimas)
k=1000; % tasku (vektoriu) skaicius
x=a + (b-a).*rand(k,n);% Sugeneruoja dvimacius vektorius
f=[];
for i=1:k % kad butu tiksliau galima ivesti daugiau tasku
  f(i)=sincos2(x(i,:));
end
[fMin,indMin]=min(f);% Randamas maximumas ir jo indeksas
[fMax,indMax]=max(f);% Randamas minimumas ir jo indeksas
xMin=x(indMin,:); %pritaikyti dvimaciui atvejui
xMax=x(indMax,:); %pritaikyti dvimaciui atvejui
fprintf('Surastas min = %6.4f taske x = (%6.4f, %6.4f)\n ', fMin,xMin(1),xMin(2))
fprintf('Surastas max = %6.4f taske x = (%6.4f, %6.4f)\n ', fMax,xMax(1),xMax(2))
grafikas2;