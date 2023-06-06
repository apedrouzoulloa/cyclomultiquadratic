%% Power basis. Refined analytic bounds (Proposition 3.15)

function [CondX, CondY] = CondProp315_K(Size, NumPrimes)
    
    CondX = zeros(1,Size);
    CondY = zeros(1,Size);

    for n = 1:Size
        [radical, k, prime_factors] = rad(n);
        if (k == 1) && (prime_factors~=1) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = 4*eulerPhi(n)^2;
        
        elseif (k == 2) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = 4*eulerPhi(radical)*eulerPhi(n)^2;
        
        elseif (k == 3) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = 4*eulerPhi(radical)^2*eulerPhi(n)^2;

        elseif (k == 4) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = 4*eulerPhi(radical)^4*eulerPhi(n)^2;

        elseif (k == 5) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = 4*eulerPhi(radical)^7*eulerPhi(n)^2;

        elseif (k == 6) && (NumPrimes == k)
            CondX(n) = n;
            CondY(n) = 4*eulerPhi(radical)^11*eulerPhi(n)^2;

        end
    end

    CondX = CondX(CondX ~= 0); 
    CondY = CondY(CondY ~= 0);

end