function [x,y,z,ry,rz] = D5RTool_FwKine(r1,p2,p3,p4,r5)
%D5RTOOL_FWKINE 此处显示有关此函数的摘要
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

ry = -r5;
rz = r1;
% x = (l3 + l5 + lty + p2) * sin(r1) + p3 * cos(r1) + ltx*cos(r1)*cos(r5) + ltz*cos(r1)*sin(r5);
% y = p3*sin(r1) - (lty+l3+l5+p2)*cos(r1) + ltx*sin(r1)*cos(r5) + ltz*sin(r1)*sin(r5);
% z = ltx*sin(r5) - ltz*cos(r5) - p4 - (l1+l2+l4);
x = (l3 + l5 + lty + p2) .* sind(r1) + p3 .* cosd(r1) + ltx.*cosd(r1).*cosd(r5) + ltz.*cosd(r1).*sind(r5);
y = p3.*sind(r1) - (lty+l3+l5+p2).*cosd(r1) + ltx.*sind(r1).*cosd(r5) + ltz.*sind(r1).*sind(r5);
z = ltx.*sind(r5) - ltz.*cosd(r5) - p4 - (l1+l2+l4);
end