%%五自由度机械臂运动学
clear;
clc;

%五自由度机械臂结构参数(单位m)
L1=28e-3;
L2=15e-3;
L3=39.5e-3;
L4=17.25e-3;
L5=59.6e-3;
L6=62.5e-3;
L7=27.705e-3;
L8=5e-3;


%正运动学(各驱动副输入，随便假设)
theta1=pi/2;
theta5=pi/4;
d2=8;
d3=3.2;
d4=11.8;

T60=[cos(theta1).*cos(theta5),(-1).*sin(theta1),cos(theta1).*sin(theta5), ...
    (-1).*(d2+L4+L5).*sin(theta1)+cos(theta1).*(d3+(-1).*L8+(-1).*L6.*cos(theta5)+(-1).*L7.*sin(theta5));
  cos(theta5).*sin( ...
  theta1),cos(theta1),sin(theta1).*sin(theta5),(d2+L4+L5).*cos( ...
  theta1)+sin(theta1).*(d3+(-1).*L8+(-1).*L6.*cos(theta5)+(-1).*L7.* ...
  sin(theta5));
  (-1).*sin(theta5),0,cos(theta5),d4+(-1).*L1+(-1).*L2+ ...
  (-1).*L3+(-1).*L7.*cos(theta5)+L6.*sin(theta5);
  0,0,0,1];

beta=theta1/pi*180;
gamma=theta5/pi*180;
x60=T60(1,4);
y60=T60(2,4);
z60=T60(3,4);
FK=[x60 y60 z60 beta gamma];


%逆运动学(原始模型)
theta1=beta/180*pi;
theta5=gamma/180*pi;
d2=(-1).*L4+(-1).*L5+y60.*cos(theta1)+(-1).*x60.*sin(theta1);
d3=L8+x60.*cos(theta1)+L6.*cos(theta5)+y60.*sin(theta1)+L7.*sin(theta5);
d4=L1+L2+L3+z60+L7.*cos(theta5)+(-1).*L6.*sin(theta5);
IK=[theta1/pi*180 d2 d3 d4 theta5/pi*180];


%逆运动学(放到unity后)、注意d4不是替换到关节4，而是加到关节4
theta1=-beta/180*pi;
theta5=-(gamma/180*pi);
d2=-((-1).*L4+(-1).*L5+(-y60).*cos(theta1)+(-1).*x60.*sin(theta1));
d3=L8+x60.*cos(theta1)+L6.*cos(theta5)+(-y60).*sin(theta1)+L7.*sin(theta5);
d4=L1+L2+L3+z60+L7.*cos(theta5)+(-1).*L6.*sin(theta5);
IK=[theta1/pi*180 d2 d3 d4 theta5/pi*180];


