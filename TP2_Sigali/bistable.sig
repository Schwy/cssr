process bistable = (? boolean top ! boolean sortie, fdp)
(|  zsortie := sortie $1		% P(zsortie) = P(sortie) %
|	sortie := not(zsortie)		% P(sortie) = T(top).P(zsortie) %
|	sortie ^= when top				% P(sortie) = T(top) %
|	fdp := (when not(sortie) when zsortie) default ((sortie) when not(zsortie))
%|	fdp := (when sortie when zsortie) default (not(sortie) when not(zsortie))%
|)
where
	boolean zsortie;
end
