%% Function computing the radical of a composite integer number

% If n = p1^k1...pr^kr, then rad(n) computes p1*...*pr
% rad(n) = p1*...*pr

function [radical, k, prime_factors]= rad(n)
    prime_factors = unique(factor(n));
    k = length(prime_factors);
    radical = round(geomean(prime_factors)^k);
end