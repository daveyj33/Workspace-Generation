clc; clear;
hold on;

a1=pi/2;ac=pi/2; a2=0; a3=0;ab=0; % the angle alpha between z_i1 and z_i measured about x_i 
%t1=0:1:90; tc=t1; t2=0; t3=0; % the angle theta between x_i1 and x_i measured about z_i1 
%t1=t1*(pi/180);tc=tc*(pi/180);t2=t2*(pi/180);t3=t3*(pi/180)
r1=0;rc=.1; r2=.25; r3=.25; rb=.15; %  distance along x_i from O_i to the intersection of the x_i and z_i1 axes.
d1=.1524; dc=0; d2=0; d3=0; db=0; % distance along z_i1 from O_i1 to the intersection of the x_i and z_i1 axes.

 for t1=-pi/3:pi/24:pi/3
      for tb=0:pi/3:2*pi
          for tc=t1+tb
        for t2=-3*pi/8:pi/12:pi/4
            for t3=-pi/4:pi/12:-pi/8
hb=[cos(tb) -sin(tb)*cos(ab) sin(tb)*sin(ab) rb*cos(tb);sin(tb) cos(tb)*cos(ab) -cos(tb)*sin(ab) rb*sin(tb);0 sin(ab) cos(ab) db; 0 0 0 1];         
h1=[cos(t1) -sin(t1)*cos(a1) sin(t1)*sin(a1) r1*cos(t1);sin(t1) cos(t1)*cos(a1) -cos(t1)*sin(a1) r1*sin(t1);0 sin(a1) cos(a1) d1; 0 0 0 1];
hc=[cos(tc) -sin(tc)*cos(ac) sin(tc)*sin(ac) rc*cos(tc);sin(tc) cos(tc)*cos(ac) -cos(tc)*sin(ac) rc*sin(tc);0 sin(ac) cos(ac) d1; 0 0 0 1];
h2=[cos(t2) -sin(t2)*cos(a2) sin(t2)*sin(a2) r2*cos(t2);sin(t2) cos(t2)*cos(a2) -cos(t2)*sin(a2) r2*sin(t2);0 sin(a2) cos(a2) d2; 0 0 0 1];
h3=[cos(t3) -sin(t3)*cos(a3) sin(t3)*sin(a3) r3*cos(t3);sin(t3) cos(t3)*cos(a3) -cos(t3)*sin(a3) r3*sin(t3);0 sin(a3) cos(a3) d3; 0 0 0 1];

hob=[hb];
ho1=[h1+hb];
hoc=[hb+hc];
ho2=[hc*h2+hb];
ho3=[hc*h2*h3+hb];

%x=[0 hob(1,4) ho1(1,4) hoc(1,4) ho2(1,4) ho3(1,4)];
x=[ho3(1,4)]
%y=[0 hob(2,4) ho1(2,4) hoc(2,4) ho2(2,4) ho3(2,4)];
y=[ho3(2,4)]
%z=[0 hob(3,4) ho1(3,4) hoc(3,4) ho2(3,4) ho3(3,4)];
z=[ho3(3,4)]

axis equal

plot3(x,y,z,'.r-','LineWidth',2);
%pause(.1)
end;
plot3(x,y,z,'Ob-');
%pause(.1) 
end;
plot3(x,y,z,'.b-');
%pause(.1)
end;
plot3(x,y,z,'.b-');
end;
plot3(x,y,z,'.b-');
pause(.01)
end;
