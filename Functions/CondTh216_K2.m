%%Twisted (or full power) basis. Refined analytic bounds (Theorem 2.16 and Theorem 2.13)

% The function uses internally the expression from Th 2.13 to evaluate Th 2.16 for any number of "NumPrimes"
% Th 2.13: eulerPhi(n)*sqrt(2*(1 - 1/p)); <- n = p^k

% This "CondTh216" function is specialized to the case n = 2^d*p^l

function [CondX, CondY] = CondTh216_K2(Size)
    
    NumPrimes = 2; % Specialized to the case n = 2^d*p^l

    CondX = zeros(1,Size);
    CondY = zeros(1,Size);

    for n = 1:Size
        [~, k, prime_factors] = rad(n);
        if (prime_factors(1) == 2) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = eulerPhi(n)*sqrt(2^k);
            for ind_primes = 1:k
                CondY(n) = CondY(n)*sqrt(1 - 1/prime_factors(ind_primes));
            end
        end
    end

    CondX = CondX(CondX ~= 0); 
    CondY = CondY(CondY ~= 0);

end