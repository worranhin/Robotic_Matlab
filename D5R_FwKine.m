function [px, py, pz, ry, rz] = D5R_FwKine(r1, p2, p3, p4, r5)
%D5R_FWKINE 求解五自由度机器人的正运动学
%   r1, r5 单位为 °
%   p2, p3, p4, p5 单位为 mm

l1 = 38;
l2 = 11.5;
l3 = 17.25;
l4 = 28;
l5 = 18.1;

px = (l3+l5) .* sind(r1) + p3 .* cosd(r1) + p2 .* sind(r1);
py = -(l3+l5) .* cosd(r1) + p3 .* sind(r1) - p2 .* cosd(r1);
pz = -p4 - (l1+l2+l4);
ry = r1;
rz = r5;
end

