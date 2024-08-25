function [px, py, pz, ry, rz] = D5R_FwKine(r1, p2, p3, p4, r5)
%D5R_FWKINE 此处显示有关此函数的摘要
%   此处显示详细说明
px = 35.35 * sin(r1) + p3 * cos(r1) + p2 * sin(r1);
py = -35.35 * cos(r1) + p3 * sin(r1) - p2 * cos(r1);
pz = -p4 - 77.5;
ry = r1;
rz = r5;
end

