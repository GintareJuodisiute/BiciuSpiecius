x1=-10:0.2:10;% padaryti, kad breztu dvimate funkcija: surf, mesh komandos
x2=-10:0.2:10;
[X1,X2]=meshgrid(x1,x2);% plot jau nebetiks, reikia naudoti surf, mesh komandos
Z=sincos2(x);
surf(X1,X2,Z)
