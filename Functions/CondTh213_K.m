%% Power basis. Closed formula for n = 2^k*p^l (Theorem 2.13)

function [CondX, CondY] = CondTh213_K(Size, NumPrimes)
    
    CondX = zeros(1,Size);
    CondY = zeros(1,Size);

    for n = 1:Size
        [~, k, prime_factors] = rad(n);
        if (k == 1) && (prime_factors~=1) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = eulerPhi(n)*sqrt(2*(1 - 1/prime_factors));
        
        elseif (k == 2) && (prime_factors(1) == 2) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = eulerPhi(n)*sqrt(2*(1 - 1/prime_factors(2)));
        
        end
    end

    CondX = CondX(CondX ~= 0); 
    CondY = CondY(CondY ~= 0);

end