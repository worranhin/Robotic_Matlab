function [r1,p2,p3,p4,r5] = D5RTool_InvKine(x,y,z,ry,rz)
%D5RTOOL_INVKINE 此处显示有关此函数的摘要
%   此处显示详细说明
% syms l1 l2 l3 l4 l5;
% syms ltx lty ltz;
l1 = 38;
l2 = 11.5;
l3 = 17.25;
l4 = 28;
l5 = 18.1;
ltx = 67.9;
lty = 41.5;
ltz = 27.75;

m1 = l3+l5+lty;
m2 = l1+l2+l4;

r1 = rz;
r5 = -ry;
p2 = x.*sind(rz) - y.*cosd(rz) - m1;
p3 = x.*cosd(rz) + y.*sind(rz) - ltx.*cosd(r5) - ltz.*sind(r5);
p4 = -z + ltx.*sind(r5) - ltz.*cosd(r5) - m2;



% p2 = x.*sind(r1) - y.*cosd(r1) - m1;
% p3 = x.*cosd(r1) + y.*sind(r1) - ltx.*cosd(r5) - ltz.*sind(r5);
% p4 = -z + ltx.*sind(r5) - ltz.*cosd(r5) - (l1+l2+l4);
end

