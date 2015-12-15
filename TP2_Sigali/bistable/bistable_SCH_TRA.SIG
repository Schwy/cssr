process bistable_SCH_TRA =
     ( ? boolean top;
       ! boolean sortie, fdp;
     )
   pragmas 
      Main
      DefinedClockHierarchy
   end pragmas
   (| (| Tick := true
       | when Tick ^= top
       | ACT_Tick{}
       |)
    | (| C_fdp --> fdp
       | {C_CLK_26 --> C_fdp} when top
       | {C_CLK_15 --> C_CLK_26} when top
       | C_CLK_12 --> C_CLK_15
       | sortie --> C_CLK_12
       | top --> sortie
       |)
    |)
   where 
   boolean Tick;
   process ACT_Tick =
        ( )
      (| (| when top ^= sortie
          | ACT_top{}
          |) |)
      where 
      process ACT_top =
           ( )
         (| when top ^= zsortie ^= C_CLK_12 ^= C_CLK_15 ^= C_CLK_26 ^= C_fdp
          | (| when C_fdp ^= fdp
             | (| fdp := (true when C_CLK_26) default (sortie when C_CLK_12) |)
             |)
          | (| sortie := not zsortie
             | zsortie := sortie$1 init false
             | C_CLK_12 := not zsortie
             | C_CLK_15 := not sortie
             | C_CLK_26 := zsortie and C_CLK_15
             | C_fdp := C_CLK_26 or C_CLK_12
             |)
          |)
         where 
         boolean zsortie, C_CLK_12, C_CLK_15, C_CLK_26, C_fdp;
         end
      %ACT_top%; 
      end
   %ACT_Tick%; 
   end
%bistable_SCH_TRA%; %(| Tick := true when Tick
                      | C_CLK := not top
                      |)**WARNING: unused signals 

%
