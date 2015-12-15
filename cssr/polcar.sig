% x = r*cos(a) %
% y = r*sin(a) %
process polcar = {}
(? dreal r, a ! dreal x, y)
(
	| cosa := cos{}(a)	% P(cosa)=P(a) %
	| sina := sin{}(a)	% P(sina)=P(a) %
	| x := r*cosa	% P(x)==P(cosa) %
	| y := r*sina	% P(y)=P(sina) %
|)
where
	real cosa, sina;
	function cos = {} (? dreal a ! dreal kos) 	% P(Y)=P(X) %
	; % Séparer les fonctions par un point-virgulelelele %
	function sin = {} (? dreal a ! dreal syn) 	% P(Y)=P(X) %
	
end
