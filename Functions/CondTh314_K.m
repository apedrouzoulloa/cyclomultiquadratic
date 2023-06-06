%% Power basis. Closed formula for n = 2^k*p^l (Theorem 3.14)
% Cond/A(n)

function [CondDivAX, CondDivAY] = CondTh314_K(Size, NumPrimes)

    CondX = zeros(1,Size);
    CondY = zeros(1,Size);

    for n = 1:Size
        [radical, k, prime_factors] = rad(n);
        if (prime_factors(1) ~= 1) && (k == NumPrimes)
            CondX(n) = n;
            CondY(n) = 2*radical*n^(2^k + k + 2);
            if (k == 6) %specifically dealing with the 6 primes case
                CondX(n) = n;
                CondY(n) = log10(2*radical) + (2^k + k + 2)*log10(n);
            end
        end
    end
    CondDivAX = CondX(CondX ~= 0); 
    CondDivAY = CondY(CondY ~= 0);
end