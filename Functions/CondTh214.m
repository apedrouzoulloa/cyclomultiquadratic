%% Power basis. Closed formula for n = 2^k*p^l (Theorem 2.14)
% Cond/A(n)

function [CondDivAX, CondDivAY] = CondTh214(Size)

    CondX = zeros(1,Size);
    CondY = zeros(1,Size);

    for n = 1:Size
        [radical, k, prime_factors] = rad(n);
        if (prime_factors(1) ~= 1)
            CondX(n) = n;
            CondY(n) = 2*radical*n^(2^k + k + 2);
        end
    end
    CondDivAX = CondX(CondX ~= 0); 
    CondDivAY = CondY(CondY ~= 0);
end