%EX 1
% A=[2 4 7 3 5 10]
% B=A(3:5)
% C=A(2:2:6)

%EX 2
% A = [1 2 3 4 5 6;
%     2 3 4 5 6 1;
%     3 4 5 6 1 2;
%     4 5 6 1 2 3;
%     5 6 1 2 3 4];
% 
% B = A(2, :)
% C = A(:, 3)
% D = A(1:2, 4:6)

%EX 3
% A = [1 2 3;
%     4 5 6;
%     7 8 9];

% L = A(2, :);
% B = fliplr(L)
% 
% C = flipud(A)
% 
% D = inv(A)

% E = det(A)

% F = trace(A)

% I = eye(10)

% O = zeros(4, 5)

% U = ones(2, 3)


%EX fisa
% A = [1,2,3;4,5,6;7,8,9]
% B = ones(3)

% C = A + B
% C = A - B

% X = [2 2 2; 2 2 2; 2 2 2]

% C = A.*X

% C= A.^2

x = 0:0.01:20;
f1 = sin(x);
f2 = cos(x);
f3 = tan(x);
f4 = sin(-x);

% plot(x, f1)
% hold on
% plot(x, f2)

plot(x, f1)
hold on
plot(x, f4)

% t = -10:1:10;
% f5 = (t)

% plot(x, f3)
