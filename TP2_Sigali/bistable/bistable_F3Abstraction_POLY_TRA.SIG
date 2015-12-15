process bistable_F3Abstraction_POLY_TRA =
     ( ? boolean top;
       ! boolean sortie, fdp;
     )
   pragmas 
      Partition "booleanPart"
   end pragmas
   (| (| CLK_top := ^top
       | CLK_top ^= top
       | ACT_CLK_top{}
       |) |)
   where 
   event CLK_top;
   process ACT_CLK_top =
        ( )
      (| (| CLK_sortie := when top
          | CLK_sortie ^= sortie
          | ACT_CLK_sortie{}
          | CLK := when (not top)
          |) |)
      where 
      event CLK, CLK_sortie;
      process ACT_CLK_sortie =
           ( )
         (| CLK_sortie ^= zsortie
          | (| CLK_11 := when zsortie
             | CLK_12 := when (not zsortie)
             |)
          | (| CLK_14 := when sortie
             | CLK_15 := when (not sortie)
             |)
          | (| CLK_26 := CLK_11 ^* CLK_15 |)
          | (| CLK_fdp := CLK_12 ^+ CLK_26
             | CLK_fdp ^= fdp
             | (| fdp := CLK_26 default (sortie when CLK_12) |)
             |)
          | (| zsortie := sortie$1 init false
             | sortie := not zsortie
             |)
          |)
         where 
         event CLK_fdp, CLK_26, CLK_15, CLK_14, CLK_12, CLK_11;
         boolean zsortie;
         end
      %ACT_CLK_sortie%; 
      end
   %ACT_CLK_top%; 
   end
%bistable_F3Abstraction_POLY_TRA%; 
