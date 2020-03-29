function[U, v, W] = gen_data(n, p)
U = -0.5 + rand(n, p);%Unif(-0.5,0.5)
rng(123);
TX = 10 * rand(n, p);%fix TX by setting seed rng(123)
ep = 0.1 * randn(n, 1);
v = sum(TX .* U, 2) + ep;
t = ones(n - 1, 1);
W = 0.5 * eye(n) + 0.25 * diag(t, 1) + 0.25 * diag(t, -1);
W(1, n) = 0.25;
W(n, 1) = 0.25;
end