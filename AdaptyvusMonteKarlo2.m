% Monte Carlo (Random Search) motodo realizacija
% 1. Sugeneruojame 100 atsitiktiniu tasku intervale [-10:10]^2
% 2. Surandame, kuriame funkcija igyje didziausia (maziausia) reiksme
%rand(1,100) sugeneruoja skaicius is intervalo [0;1] ir ju yra 100.
a1=-10;
b1=10;
n=2;% dimensija(matavimas)
k1=50; % tasku (vektoriu) skaicius
x1=a1 + (b1-a1).*rand(k1,n);% Sugeneruoja dvimacius vektorius
f1=[];
for i=1:k1 % kad butu tiksliau galima ivesti daugiau tasku
  f1(i)=sincos2(x1(i,:));
end
[fMin1,indMin1]=min(f1);% Randamas maximumas ir jo indeksas
%[fMax1,indMax1]=max(f1);% Randamas minimumas ir jo indeksas
xMin1=x1(indMin1,:); %pritaikyti dvimaciui atvejui
%xMax1=x1(indMax1,:); %pritaikyti dvimaciui atvejui
fprintf('Surastas min = %6.4f taske x = (%6.4f, %6.4f)\n ', fMin1,xMin1(1),xMin1(2))
%fprintf('Surastas max = %6.4f taske x = (%6.4f, %6.4f)\n ', fMax1,xMax1(1),xMax1(2))
hold on;
scatter(x1(:,1),x1(:,2),'b.');
scatter(xMin1(1),xMin1(2),'r*');
text(xMin1(1) + 0.3,xMin1(2),num2str(fMin1));
rectangle('Position',[-10.0,-10.0,20.0,20.0],...
    'LineWidth',5,'LineStyle','--')



% kitus 50 bandymu atliekame kitoje sumazintoje srityje  
a2=xMin1(1)-1; %Likusiu tasku (vektoriu) skaicius
b2=xMin1(1)+1;% sumazinta sritis
a3=xMin1(2)-1;
b3=xMin1(2)+1;
n=1;% dimensija(matavimas)
k2=50; % tasku (vektoriu) skaicius
x2(:,1)=a2 + (b2-a2).*rand(k2,n);% Sugeneruoja dvimacius vektorius
x2(:,2)=a3 + (b3-a3).*rand(k2,n);
f2=[];
for i=1:k2 % kad butu tiksliau galima ivesti daugiau tasku
  f2(i)=sincos2(x2(i,:));
end
[fMin2,indMin2]=min(f2);% Randamas maximumas ir jo indeksas
%[fMax2,indMax2]=max(f2);% Randamas minimumas ir jo indeksas
xMin2=x2(indMin2,:); %pritaikyti dvimaciui atvejui
%xMax2=x2(indMax2,:); %pritaikyti dvimaciui atvejui
fprintf('Surastas min = %6.4f taske x = (%6.4f, %6.4f)\n ', fMin2,xMin2(1),xMin2(2))
%fprintf('Surastas max = %6.4f taske x = (%6.4f, %6.4f)\n ', fMax2,xMax2(1),xMax2(2))
hold on;
scatter(x2(:,1),x2(:,2),'b.');
scatter(xMin2(1),xMin2(2),'r+');
text(xMin2(1) + 0.3,xMin2(2),num2str(fMin2));
rectangle('Position',[a2,a3,2.0,2.0],...
    'LineWidth',3,'LineStyle','--')
%grafikas2;