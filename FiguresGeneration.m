%% Analytic upper bounds for the condition number of the Vandermonde matrices:

% Used functions for the different expressions and the representation of figures in the work: Iván Blanco-Chacón, Alberto Pedrouzo-Ulloa, Rahinatou Yuh Njah, Beatriz Barbero-Lucas, "Fast Polynomial Arithmetic in Homomorphic Encryption with Cyclo-Multiquadratics Fields"

% Radical function
% [radical, r, prime_factors] = rad(n) evaluates p1*...*pr, given n = p1^k1*...*pr^kr for r different primes


% Euler's totient function
% p = eulerPhi(n) evaluates the Euler phi function or (also known as the totient function) for a positive integer n.


% Power basis. Closed formula for n = 2^k*p^l (Theorem 3.13)
% [CondX, CondY] = CondTh313_K(Size, NumPrimes) Gives "x" and "y" labels for the analytic expression from Th. 3.13 for all n <= Size composed of "NumPrimes" \in [1, 2] primes


% Power basis. Non-refined asymptotic upper bound (Theorem 3.14)
% We used a "lower bound" of the upper bound -> Cond/A(n) <= Cond
% [CondDivAX, CondDivAY] = CondTh314_K(Size, NumPrimes) Gives "x" and "y" labels for the upper bound from Th. 3.14 for all n <= Size composed of "NumPrimes" primes


% Power basis. Non-refined asymptotic upper bound (Theorem 3.14)
% We used a "lower bound" of the upper bound -> Cond/A(n) <= Cond
% [CondDivAX, CondDivAY] = CondTh314(Size) Gives "x" and "y" labels for the upper bound from Th. 3.14 for all n (It does not work correctly for all K >= 6, but it works well till "Size" around 30000)


% Power basis. Refined analytic bounds (Proposition 3.15)
% [CondX, CondY] = CondProp315_K(Size, NumPrimes) Gives "x" and "y" labels for the upper bound from Prop. 3.15 for all n <= Size composed of "NumPrimes" \in [1, 6] different primes


% Twisted (or full power) basis. Refined analytic bounds (Theorem 3.16 and Propostion 3.13)
% [CondX, CondY] = CondTh316_K(Size, NumPrimes) Gives "x" and "y" labels for the upper bound from Th. 3.16 for all n <= Size composed of "NumPrimes" different primes


% Twisted (or full power) basis. Refined analytic bounds (Theorem 3.16 and Propostion 3.13)
% [CondX, CondY] = CondTh316_K2(Size) Gives "x" and "y" labels for the upper bound from Th. 3.16 for the case n = 2^d*p^l


% Twisted (or full power) basis. Refined analytic bounds (Theorem 3.16 and Propostion 3.13)
% [CondX, CondY] = CondTh316(Size) Gives "x" and "y" labels for the upper bound from Th. 3.16 for all n (It works well for the represented "x" labels here, at least with "Size" around 30000)


Size = 256000;

%% Figure 1: 1 prime. Toy example: First prime = 2
[Xexp1, Yexp1] = CondTh313_K(Size, 1);
[Xexp2, Yexp2] = CondTh314_K(Size, 1);
[Xexp3, Yexp3] = CondProp315_K(Size, 1);
[Xexp4, Yexp4] = CondTh316_K(Size, 1);

% Figure representation
figure
loglog(Xexp1, Yexp1, '--r', 'LineWidth', 2.5)

grid on

hold on
loglog(Xexp2, Yexp2, '-b', 'LineWidth', 2)
loglog(Xexp3, Yexp3, '-.k', 'LineWidth', 1.5)
loglog(Xexp4, Yexp4, ':b', 'LineWidth', 1.5)

lg1 = legend('Th. III.13', 'Th. III.14', 'Prop. III.15', 'Th. III.16');
title(lg1, 'Cyclotomic fields (n = p^l)')
xlabel('n')
ylabel('Cond(V_{K_{n}})')
xlim([Xexp1(1) Xexp1(end)])
hold off


%% Figure 2: 2 primes. n = 2^d*p^l, Toy Example: 6
[Xexp1, Yexp1] = CondTh313_K(Size, 2);
[Xexp2, Yexp2] = CondTh314_K(Size, 2);
[Xexp3, Yexp3] = CondProp315_K(Size, 2);
[Xexp4, Yexp4] = CondTh316_K2(Size);

% Figure representation
figure
loglog(Xexp1, Yexp1, '--r', 'LineWidth', 2.5)

grid on

hold on
loglog(Xexp2, Yexp2, '-b', 'LineWidth', 2)
loglog(Xexp3, Yexp3, '-.k', 'LineWidth', 1.5)
loglog(Xexp4, Yexp4, ':b', 'LineWidth', 1.5)

lg1 = legend('Th. III.13', 'Th. III.14', 'Prop. III.15', 'Th. III.16');
title(lg1, 'Cyclotomic fields (n = 2^{l}p^{d})')
xlabel('n')
ylabel('Cond(V_{K_{n}})')
xlim([Xexp1(1) Xexp1(end)])
hold off


%% Figure 3: 2 primes. Toy Example: 2*3 = 6
[Xexp1, Yexp1] = CondTh314_K(Size, 2);
[Xexp2, Yexp2] = CondProp315_K(Size, 2);
[Xexp3, Yexp3] = CondTh316_K(Size, 2);

% Figure representation
figure
loglog(Xexp1, Yexp1, '--r', 'LineWidth', 2)

grid on

hold on
loglog(Xexp2, Yexp2, '-.k', 'LineWidth', 1.5)
loglog(Xexp3, Yexp3, ':b', 'LineWidth', 1.5)

lg1 = legend('Th. III.14', 'Prop. III.15', 'Th. III.16');
title(lg1, 'Cyclotomic fields (n = p^{l}q^{s})')
xlabel('n')
ylabel('Cond(V_{K_{n}})')
xlim([Xexp1(1) Xexp1(end)])
hold off


%% Figure 4: 3 primes. Toy Example: 2*3*5 = 30
[Xexp1, Yexp1] = CondTh314_K(Size, 3);
[Xexp2, Yexp2] = CondProp315_K(Size, 3);
[Xexp3, Yexp3] = CondTh316_K(Size, 3);

% Figure representation
figure
loglog(Xexp1, Yexp1, '--r', 'LineWidth', 2)

grid on

hold on
loglog(Xexp2, Yexp2, '-.k', 'LineWidth', 1.5)
loglog(Xexp3, Yexp3, ':b', 'LineWidth', 1.5)

lg1 = legend('Th. III.14', 'Prop. III.15', 'Th. III.16');
title(lg1, 'Cyclotomic fields (n = p^{l}q^{s}r^{t})')
xlabel('n')
ylabel('Cond(V_{K_{n}})')
xlim([Xexp1(1) Xexp1(end)])
hold off


%% Figure 5: 4 primes. Toy Example: 2*3*5*7 = 210
[Xexp1, Yexp1] = CondTh314_K(Size, 4);
[Xexp2, Yexp2] = CondProp315_K(Size, 4);
[Xexp3, Yexp3] = CondTh316_K(Size, 4);

% Figure representation
figure
loglog(Xexp1, Yexp1, '--r', 'LineWidth', 2)

grid on

hold on
loglog(Xexp2, Yexp2, '-.k', 'LineWidth', 1.5)
loglog(Xexp3, Yexp3, ':b', 'LineWidth', 1.5)

lg1 = legend('Th. III.14', 'Prop. III.15', 'Th. III.16');
title(lg1, 'Cyclotomic fields (n = p^{a}q^{b}r^{c}s^{d})')
xlabel('n')
ylabel('Cond(V_{K_{n}})')
xlim([Xexp1(1) Xexp1(end)])
hold off


%% Figure 6: 5 primes. Toy example: 2*3*5*7*11 = 2310
[Xexp1, Yexp1] = CondTh314_K(Size, 5);
[Xexp2, Yexp2] = CondProp315_K(Size, 5);
[Xexp3, Yexp3] = CondTh316_K(Size, 5);

% Figure representation
figure
loglog(Xexp1, Yexp1, '--r', 'LineWidth', 2)

grid on

hold on
loglog(Xexp2, Yexp2, '-.k', 'LineWidth', 1.5)
loglog(Xexp3, Yexp3, ':b', 'LineWidth', 1.5)

lg1 = legend('Th. 3.14', 'Prop. 3.15', 'Th. 3.16');
title(lg1, 'Cyclotomic fields (n = p^{a}q^{b}r^{c}s^{d}t^{e})')
xlabel('n')
ylabel('Cond(V_{K_{n}})')
xlim([Xexp1(1) Xexp1(end)])
hold off


%% Figure 7: 6 primes. Toy example: First valid value => 2*3*5*7*11*13 = 30030
[Xexp1, Yexp1] = CondTh314_K(Size, 6);
[Xexp2, Yexp2] = CondProp315_K(Size, 6);
[Xexp3, Yexp3] = CondTh316_K(Size, 6); % Due to the large size of numbers with K = 6, the case "NumPrimes = 6" is computed with logarithms inside the function "CondTh316_K"

% Figure representation
figure
semilogx(Xexp1, Yexp1, '--r', 'LineWidth', 2)

grid on

hold on
semilogx(Xexp2, log10(Yexp2), '-.k', 'LineWidth', 1.5) % The case "NumPrimes = 6" inside "CondTh316_K" requires to calculate the figure in a different way
semilogx(Xexp3, log10(Yexp3), ':b', 'LineWidth', 1.5)

lg1 = legend('Th. III.14' ,'Prop. III.15', 'Th. III.16');
title(lg1, 'Cyclotomic fields (n = p^{a}q^{b}r^{c}s^{d}t^{e}u^{f})')
xlabel('n')
ylabel('Cond(V_{K_{n}})')
xlim([Xexp1(1) Xexp1(end)])

yticks([0 100 200 300 400])
yticklabels({'10^{0}','10^{100}','10^{200}','10^{300}','10^{400}'})
hold off


%% Figure 8: Unbounded number of primes.
%It is enough to work with "Size" till 30000 to avoid issues in k >= 6 for the general bound from Th 3.14
Size = 30000;

[Xexp1, Yexp1] = CondTh314(Size);
[Xexp2, Yexp2] = CondTh316(Size);

% Figure representation
figure
loglog(Xexp1, Yexp1, '--r', 'LineWidth', 2)

grid on

hold on
loglog(Xexp2, Yexp2, ':b', 'LineWidth', 1.5)

lg1 = legend('Th. III.14', 'Th. III.16');
title(lg1, 'Cyclotomic fields (any n)')
xlabel('n')
ylabel('Cond(V_{K_{n}})')
xlim([Xexp1(1) Xexp1(end)])
hold off

