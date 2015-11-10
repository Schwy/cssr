% x = r*cos(a) %
% y = r*sin(a) %
process cptmodO = {integer M}
(? event top ! integer n)
(
	| n_ret := n $ 1
	| n := 0 when n>=M default n_ret+1
	| n ^= ^(0 when n>=M) default top

|)
where
	integer temp, retemp init 0, 
end
