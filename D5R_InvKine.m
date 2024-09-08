function [r1, p2, p3, p4, r5] = D5R_InvKine(px, py, pz, ry, rz)
%D5R_INVKINEMATIC 求解五自由度机器人的逆运动学
%   ry, rz 单位为 °
%   px, py, pz 单位为 mm

l1 = 38;
l2 = 11.5;
l3 = 17.25;
l4 = 28;
l5 = 18.1;

r1 = ry;
r5 = rz;
p2 = px * sind(r1) - py * cosd(r1) - (l3+l5);
p3 = px * cosd(r1) + py * sind(r1);
p4 = -pz - (l1+l2+l4);
end

