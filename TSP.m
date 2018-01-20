function [ last_gen, err, mins, means, fitnesss, lengths ] = TSP( cities, k, max_epochs )
%TSP Summary of this function goes here
%   Detailed explanation goes here

[number_of_cities, ~] = size(cities);
distances = calcDistances(cities);
gen = createFirstGeneration(number_of_cities, k);
err = zeros(1, max_epochs);
cntr = 0;
mins = zeros(1, max_epochs);
means = zeros(1, max_epochs);
while cntr ~= max_epochs
    cntr = cntr +1;
    next_generation = createNextGeneration(gen);
    fitnesses = calcFitness(next_generation, distances);
    gen = select(next_generation, fitnesses, k);
    gen = mutate (gen);
    [fitnesss, lengths] = (calcFitness(gen, distances));
    mins(cntr) =  max(lengths);
    means(cntr)= mean(lengths);
    err(cntr)= max(fitnesss);
end
last_gen = gen;

end

