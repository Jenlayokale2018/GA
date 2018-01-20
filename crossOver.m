function [ child1, child2 ] = crossOver( p11, p22 )
clc;
len = length(p11);
p1 = p11(1: len -1);
p2 = p22(1: len -1);
len = length(p1);
marker = zeros (1, len);
pos = 1;
team = 1;
while min (marker) == 0
    marker(pos) = team;
    b = p2(pos);
    pos2 = find((p1 == b), 1);
    while pos2 ~= pos
        marker(pos2) = team;
        b = p2(pos2);
        pos2 = find((p1 == b), 1);
    end
    team = team + 1;
    indexes = marker == 0;
    pos = find(indexes, 1);
end
marker (indexes) = team;
child1 = zeros(1, len);
child2 = zeros(1, len);
for i = 1 : max(marker)
    indexes = marker == i;
    if mod(i, 2) == 0
        child1 (indexes) = p1(indexes);
        child2 (indexes) = p2(indexes);
    else
        child1 (indexes) = p2(indexes);
        child2 (indexes) = p1(indexes);
    end
end
child1 = [child1, child1(1)];
child2 = [child2, child2(1)];
end

