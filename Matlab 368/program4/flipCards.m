function card = flipCards(N)
card = ones(1, N);
for i = 1:N
    for j = 2:N
        if mod(i, j) == 0
            card(i) = 1-card(i);
        end
    end
end
