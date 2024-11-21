function [px, py, pz, ry, rz] = D5R_FwKine(r1, p2, p3, p4, r5)
%D5R_FWKINE 此处显示有关此函数的摘要
%   此处显示详细说明
l1 = 38;
l2 = 11.5;
l3 = 17.25;
l4 = 28;
l5 = 18.1;

px = (l3+l5) * sin(r1) + p3 * cos(r1) + p2 * sin(r1);
py = -(l3+l5) * cos(r1) + p3 * sin(r1) - p2 * cos(r1);
pz = -p4 - (l1+l2+l4);
ry = r1;
rz = r5;
end