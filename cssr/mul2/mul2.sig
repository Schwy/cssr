% := // = %

process mul2 = {}	% processus de multiplication par deux : on veux P(s)=P(e)%
(? real e ! real s)	% declaration entrées sortie %
(
|	s := 2.0*e 	% P(s)=P(e) ; instruction immediate %
|)
% where [instruction] end %

% when [cond] then [instr] end %

%
process identite = {}
(? real e ! real s)
(
	| temp := 2.0*e	% P(e)=P(temp) %
	| s := 0.5*temp	% P(temp)=P(s) %
|
where
	real temp init 0;
%


% prendre une valeur : ' s := e'%
% prendre une horloge : 's ^= e'%
