function [r1,p2,p3,p4,r5] = D5RTool_InvKine(x,y,z,ry,rz)
%D5RTOOL_INVKINE 此处显示有关此函数的摘要
%   此处显示详细说明
% l1 = 38;
% l2 = 11.5;
% l3 = 17.25;
% l4 = 28;
% l5 = 18.1;
syms l1 l2 l3 l4 l5;
syms ltx lty ltz;
m1 = l3+l5+lty;
r1 = rz;
r5 = -ry;
% p2 = x*sin(r1) - y*cos(r1) - m1;
% p3 = x*cos(r1) - y*sin(r1) - ltx*cos(r5) - ltz*sin(r5);
% p4 = -z - ltx*sin(r5) - ltz*cos(r5) - (l1+l2+l4);
p2 = x*sind(r1) - y*cosd(r1) - m1;
p3 = x*cosd(r1) + y*sind(r1) - ltx*cosd(r5) - ltz*sind(r5);
p4 = -z + ltx*sind(r5) - ltz*cosd(r5) - (l1+l2+l4);
end

