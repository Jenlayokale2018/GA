clear;
clc;


% cities = [
% 14 96;
% 31 93;
% 61 45;
% 16 18;
% 33 68;
% 3 2;
% 50 96
% 95 58;
% 12 20;
% 53 38;
% 89 71;
% 56 34;
% 70 7;
% 31 57;
% 72 32;
% 33 45;
% 54 16;
% 20 68;
% 80 26;
% 80 28;
% ];
cities = makeRandomCities(10);
k = 5;
max_epochs = 500;
subplot(3, 1, 1);
X = cities(:, 1);
Y = cities(:, 2);

[last_gen, distances, mins, means, fits, lens] = TSP(cities, k, max_epochs);
[~, index ]= min(lens);
best_tour = last_gen(index, :);
plot(X, Y,'o','MarkerFaceColor','b','MarkerEdgeColor','r','MarkerSize',10); hold on;
title('Coordinates of Cities');
xlabel('x  (km)');
ylabel('y  (km)');
plot (X(best_tour), Y(best_tour));
hold off;
subplot(3,1,2);
plot(means, '.-');
title('Average of tour distance vs Number of iterations');
xlabel('iteration');
ylabel('distance (km)');
% 
subplot(3,1,3);
plot(mins, '.-');
title('Minimum of tour distance vs Number of iterations');
xlabel('iteration');
ylabel('distance (km)');
