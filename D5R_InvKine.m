function [r1, p2, p3, p4, r5] = D5R_InvKine(px, py, pz, ry, rz)
%D5R_INVKINEMATIC 此处显示有关此函数的摘要
%   此处显示详细说明
r1 = ry;
r5 = rz;
p2 = px * sin(r1) - py * cos(r1) - 35.35;
p3 = px * cos(r1) + py * sin(r1);
p4 = -pz - 77.5;
end

