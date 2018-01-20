function [ mutated_croms] = mutate( croms )
%MUTATE Summary of this function goes here
%   Detailed explanation goes here
[number_of_croms, len] = size(croms);
for i = 1: number_of_croms
    crom = croms(i, :);
    pos = randperm(len-3, 1) + 2;
    chance = randperm(1000, 1);
    if chance > 500
%         a = crom(pos : len - 1);
%         b = crom (2 : pos -1);
%         f = crom(1);
%         mutated = [f, a, b, f];
        mutated = mutate_insertion(crom);
    else
        mutated = crom;
    end
    croms(i, :) = mutated;
end
mutated_croms = croms;

end

