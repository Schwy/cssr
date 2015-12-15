process abs_SCH_TRA =
     ( ? integer i;
       ! integer o;
     )
   pragmas 
      Main
      DefinedClockHierarchy
   end pragmas
   (| (| Tick := true
       | when Tick ^= i ^= o
       | ACT_Tick{}
       |)
    | (| C_CLK_7 --> o
       | C_CLK --> C_CLK_7
       | {i --> C_CLK} when Tick
       |)
    |)
   where 
   boolean Tick;
   process ACT_Tick =
        ( )
      (| when Tick ^= C_CLK ^= C_CLK_7
       | (| o := (i when C_CLK) default ((-i) when C_CLK_7)
          | C_CLK := i>0
          | C_CLK_7 := not (i>0)
          |)
       |)
      where 
      boolean C_CLK, C_CLK_7;
      end
   %ACT_Tick%; 
   end
%abs_SCH_TRA%; %(| Tick := true when Tick |)**WARNING: unused signals 

%
