function [ mutated ] = mutate_insertion( cor )
%MUTATE_INSERTION Summary of this function goes here
%   Detailed explanation goes here
len = length(cor) - 2;
tmp = randperm(len, 2);
a = tmp(1);
b = tmp(2);
a = a + 1;
b = b + 1;
pos1 = min([a b]);
pos2 = max([a b]);
if pos2 - pos1 > 1
    mutated = [cor(1:pos1), cor(pos2), cor(pos1+1:pos2-1),cor(pos2+1 : len +2) ];
else
    mutated = [cor(1:pos1), cor(pos2),cor(pos2+1 : len +2) ];
end
end

