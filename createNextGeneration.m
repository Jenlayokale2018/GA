function [ next_generation ] = createNextGeneration( current_generation )
%CREATENEXTGENERATION Summary of this function goes here
%   Detailed explanation goes here
[number_of_population, ~] = size(current_generation);
children = [];
for i = 1 : number_of_population - 1 
    for j = i + 1 : number_of_population
        [child1, child2] = crossOver(current_generation(i, :), current_generation(j, :));
        children = [children; child1; child2];
    end
end
next_generation = [current_generation;children];
end

