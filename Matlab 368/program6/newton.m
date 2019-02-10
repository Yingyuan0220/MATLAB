function [root, iters] = newton(func, f_prime, x0)
% newton
% 
% Uses Newton's method to find a root of func(x) near x0.
%
% Newton's method is used to find a root for func(x) starting with the
% initial guess, x0.  Successive approximations are done until either
%   func(x) is within epsilon of 0 (where epsilon = 10^-15)
% or
%   50 iterations have been done (i.e., 50 new guesses have been
%   computed)
%
% Input:
%   func    a function handle for function whose root is being determined
%   f_prime a function handle for function representing the first 
%           derivative of func(x)
%   x0      the initial guess for the location of the root
%
% Output: [root, iters] where
%   root    the final estimate for the root
%   iters   the number of iterations (until either func(x) is within 
%           epsilon of 0 or until 50 iterations have been done)
%

epsilon = 1e-15;
iters = 0;
root = x0;
while abs(func(root)) > epsilon && iters < 50
    root = root - func(root)/f_prime(root);
    iters = iters + 1;
end