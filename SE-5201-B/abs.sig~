% x = r*cos(a) %
% y = r*sin(a) %
process abs = {}
(? integer i ! integer o)
(
	%| o := (i when (i>0)) default -i	 P(o)=P(i) %

	|a := i >= 0		% P(a) = P(i)			%
	|b := i when a 		% P(b) = P(i)T(a) = T(a) 	%
	|o := b default -i 	% P(o) = P(b) + P(i) 		%
|)				% 	=P(i)T(a) + P(i) 	%
				% T(a) <= P(a) ; or P(a)=P(i)	%
				% T(a) <= P(i) 			%
				% donc d'après 1b) P(i)T(a) = T(a) %
				% P(o) = T(a)+P(i) 		%
				% T(a) <= P(i) d'apès 1a)	%
				% P(o) = P(i) 			%
where
	boolean a; integer b
end

