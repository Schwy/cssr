process cptmodO =
     { integer M; }
     ( ? event top;
       ! integer n%**ERROR: cf no-1
                %;
     )
   (| n_ret := n$1
    | a := 0 when (n>=M)
    | n := a default (n_ret+1)%**ERROR (ref-1): disagreement between types of operands
           %
    | n ^= top
    |)
   where 
   integer n_ret init 0;
   boolean a;
   end
%cptmodO%; 
