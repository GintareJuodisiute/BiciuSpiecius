function [fmin,xmin] =  MultiStart(funkcija,a,b)
% Monte Carlo (Particle Swarm) motodo realizacija
  %a=-10;
  %b=10;
  % vykdant komanda rasom (tik keiciam funkcija):[fmin,xmin] = MultiStart(@branin,-10,10)
  n=2;% dimensija(matavimas)
  k=10; % tasku (vektoriu) skaicius
  %x=a + (b-a).*rand(k,n);% Sugeneruoja dvimacius vektorius
  % atliekame lokalias paieskas kiekviename is sugeneruotu tasku
  
  %[xmin, fmin] =fminunc(@branin,x0)
  xminvisi=[];
    for i=1:10 % kad butu tiksliau galima ivesti daugiau tasku
      x0=a + (b-a).*rand(i,n);
      %x1=a + (b-a).*rand(i,n);
      [xmin,fmin] =fminunc(funkcija,x0);
      xminvisi=[xminvisi;xmin];
      %fminvisi=[fminvisi;fmin];
      %unique
      
      %[xmin,fmin] =fminbnd(@branin,x0,x1);
    end  