function [px, py, pz, ry, rz] = D5R_FwKine(r1, p2, p3, p4, r5)
%D5R_FWKINE 求解五自由度机器人的正运动学
%   r1, r5 单位为 °
%   p2, p3, p4, p5 单位为 mm

px = 35.35 * sind(r1) + p3 * cosd(r1) + p2 * sind(r1);
py = -35.35 * cosd(r1) + p3 * sind(r1) - p2 * cosd(r1);
pz = -p4 - 77.5;
ry = r1;
rz = r5;
end

