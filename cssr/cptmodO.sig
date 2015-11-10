% x = r*cos(a) %
% y = r*sin(a) %
process cptmodO = {integer M}
(? event top ! integer n)
(
	| n_ret := n $ 1			% P(n_ret) = P(n) 	%
	| a := 1 when n_ret>=M 			% P(a) = P(0) T(n>M) = T(n>M)	%
	| n := a default n_ret+1		% P(n) = P(a)+P(n_ret) = P(n)	%
	| n ^= top
|)
where
	integer n_ret init 0; integer a
end
