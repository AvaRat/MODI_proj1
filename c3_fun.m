 function out = c3_fun(in)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global a1;
global a2;
global a3;
global a4;
out = (in .* a1) + (in.^2 .*a2) + (in.^3 .*a3) + (in.^4 .*a4);
end

