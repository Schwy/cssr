% x = r*cos(a) %
% y = r*sin(a) %
process cptmod = {integer M}
(? event top ! integer n)
(
	| retemp := temp $ 1				%P(retemp) = P(temp)
	| n := 1 when (temp > M) default temp		% P(n) = P(temp)%
	| temp := retemp+1 when top default retemp	% P(temp) = P(retemp) %
	| temp ^= top
|)
where
	integer temp, retemp init 0
end
