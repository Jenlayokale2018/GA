function [ firstGeneration ] = createFirstGeneration( number_of_cities, number_of_population)
%CREATEFIRSTGENERATION Summary of this function goes here
%   Detailed explanation goes here
firstGeneration = zeros(number_of_population, number_of_cities + 1);
for i = 1 : number_of_population
    tmp = randperm(number_of_cities);
    firstGeneration(i, :) = [tmp tmp(1)];
end
end

