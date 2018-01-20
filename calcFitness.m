function [ len, sum_len ] = calcFitness( croms, distances )
%CALCFITNESS Summary of this function goes here
%   Detailed explanation goes here
[number_of_croms, number_of_cities] = size(croms);
len = zeros(number_of_croms, 1) ;
sum_len = zeros(number_of_croms, 1) ;
for i = 1 : number_of_croms
    for j = 1 : number_of_cities - 1
        len(i, :) = len(i, :) + distances(croms(i, j), croms(i, j+1));
    end
    sum_len (i, :) = len(i, :);
end
    len = len - (0.97 .* (min(len)));
    len = 1 ./ len;
end

