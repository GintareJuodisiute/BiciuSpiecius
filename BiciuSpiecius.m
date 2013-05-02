function [f1_min,x1_min] = BiciuSpiecius(funkcija,a1,b1)
% Monte Carlo (Particle Swarm) motodo realizacija
  %a1=-10;
  %b1=10;
  % vykdant komanda rasom (tik keiciam funkcija):[f1_min,x1_min] = BiciuSpiecius(@branin,-10,10)
  n=2;% dimensija(matavimas)
  k1=60; % tasku (vektoriu) skaicius
  x1=a1 + (b1-a1).*rand(k1,n);% Sugeneruoja dvimacius vektorius
  f1=[];
    for i=1:k1 % kad butu tiksliau galima ivesti daugiau tasku
      f1(i)=funkcija(x1(i,:));
    end
    
   [f1_sort, f1_sort_ind] = sort(f1) % surusiuoja visas 60 reiksiu
   x1_sort = x1(f1_sort_ind,:)
   f1_sort_10 = f1_sort(1:10) % Isrenka 10 is surusiuotu
   x1_sort_10 = x1_sort(1:10,:)

%surasta kol kas geriausia reiksme ir taskas

  f1_min = f1_sort(1);
  x1_min = x1_sort(1,:);
  
  %nubraizome

  hold on;
  scatter(x1(:,1),x1(:,2),'b.');
  scatter(x1_sort_10(:,1),x1_sort_10(:,2),'r*');
    for i=1:10
      text(x1_sort(i,1) + 0.3,x1_sort(i,2),num2str(i));
    end
  rectangle('Position',[-10.0,-10.0,20.0,20.0],...
    'LineWidth',5,'LineStyle','--')
% PRASIDEDA KLONAVIMAS
% Mazas pvz., "suleisiu" 1 taska su 2

   for i=1:9
      for j=i+1:10    
     x1_naujas = (x1_sort_10(i,:) + x1_sort_10(j,:))/2;
     f1_naujas = funkcija(x1_naujas(1,:))
     %nubreziu nauja taska
     scatter(x1_naujas(1,1),x1_naujas(1,2),'g*'); 
     text(x1_naujas(1,1) + 0.3,x1_naujas(1,2),num2str(f1_naujas));
      end
   end

    