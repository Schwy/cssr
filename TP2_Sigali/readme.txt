Always(S,gen([sortie=1]));

1.1.3
	Question : Est-ce que le signal fdp est toujours faux ?
	Avec : not((when sortie when zsortie) default (not(sortie) when not(zsortie)))
	Always(S,gen([fdp=1])); => répond 

1.1.4
	Queston : Est-ce que le signal fdp n'est jamais vrai ?
	Avec : (when sortie when zsortie) default (not(sortie) when not(zsortie))
	Never(S,gen([fdp=1])); => répond True

1.1.5
	Question : Est-ce que le signal fdp peut avoir les valeurs absent ou faux ?
	Avec : (when sortie when zsortie) default (not(sortie) when not(zsortie))
	Reachable(S,gen([fdp=1])); => répond False

1.1.6
	Question : XX ?
