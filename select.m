function [ selected ] = select( generation, fitnesses, k )
[number_of_population, len] = size(generation);
selected = zeros(k, len);
sum_of_fitnesses = sum(fitnesses);
percentages = ceil((fitnesses .* 100 ) ./ sum_of_fitnesses);
tmp = [];
for i = 1 : number_of_population
    tmp_ones = ones(1, percentages(i, 1));
    tmp_ones = tmp_ones .* i;
    tmp = [tmp, tmp_ones];
end
tmp = tmp(randperm(length(tmp)));
tmp(randperm(length(tmp), k));
for i = 1 : k
    selected(i, :) = generation(tmp(i), :);
end
% hojjat = sum(selected(:, 1:10)');
% disp (hojjat);
end

