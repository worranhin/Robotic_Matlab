function [r1, p2, p3, p4, r5] = D5R_InvKine(px, py, pz, ry, rz)
%D5R_INVKINEMATIC 求解五自由度机器人的逆运动学
%   ry, rz 单位为 °
%   px, py, pz 单位为 mm

r1 = ry;
r5 = rz;
p2 = px * sind(r1) - py * cosd(r1) - 35.35;
p3 = px * cosd(r1) + py * sind(r1);
p4 = -pz - 77.5;
end

