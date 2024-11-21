% 解线性方程来求解逆解
% A x = b
syms S1 C1 S5 C5 m1 m2 ltx lty ltz x y z
% x = [p2 p3 p4]'
A = [S1 C1 0;
     -C1 S1 0;
     0 0 -1];
b = [x - m1 .* S1 - ltx .* C1 .* C5 - ltz.*C1.*S5;
    y + m1.*C1 - ltx.*S1.*C5 - ltz.*S1.*S5;
    z + m2 - ltx.*S5 + ltz.*C5];

x = A \ b