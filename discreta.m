function [j] = discreta(q)
%discreta Summary of this function goes here
%   q = (q1, q2, q3)
u = rand(1);
if(u < q(1))
    j = 1;
elseif (u < q(1) + q(2))
    j = 2;
else
    j = 3;
end
end

