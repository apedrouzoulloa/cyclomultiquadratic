%%Twisted (or full power) basis. Refined analytic bounds (Theorem 3.16 and Theorem 3.13)

% The function uses internally the expression from Th 3.13 to evaluate Th 3.16 for any number of "NumPrimes"
% Th 3.13: eulerPhi(n)*sqrt(2*(1 - 1/p)); <- n = p^k

function [CondX, CondY] = CondTh316(Size)
    
    CondX = zeros(1,Size);
    CondY = zeros(1,Size);

    for n = 1:Size
        [~, k, prime_factors] = rad(n);
        if (prime_factors(1) ~= 1)
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