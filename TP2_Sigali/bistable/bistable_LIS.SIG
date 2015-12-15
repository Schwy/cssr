process bistable =
     ( ? boolean top;
       ! boolean sortie, fdp;
     )
   (| zsortie := sortie$1
    | sortie := ((not zsortie) when top) default zsortie
    | sortie ^= top
    | fdp := ((when sortie) when zsortie) default ((not sortie) when (not zsortie))
    |)
   where 
   boolean zsortie;
   sortie init 0;
   end
%bistable%; %**ERROR: Double declaration of sortie 
%
