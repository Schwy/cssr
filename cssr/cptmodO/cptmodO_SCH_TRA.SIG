process cptmodO_SCH_TRA =
     ( ? boolean top;
       ! integer n;
     )
   pragmas 
      Main
      DefinedClockHierarchy
   end pragmas
   (| (| Tick := true
       | when Tick ^= top ^= n
       | ACT_Tick{}
       |)
    | (| {C_CLK_9 --> n} when CLK_TICK
       | C_CLK --> C_CLK_9
       | top --> C_CLK
       |)
    |)
   where 
   constant integer M = 5;
   boolean Tick;
   process ACT_Tick =
        ( )
      (| when Tick ^= n_ret ^= C_CLK ^= C_CLK_9
       | (| n := (1 when C_CLK) default ((n_ret+1) when C_CLK_9)
          | n_ret := n$1 init 0
          | C_CLK := n_ret>=5
          | C_CLK_9 := not (n_ret>=5)
          |)
       |)
      where 
      boolean C_CLK, C_CLK_9;
      integer n_ret;
      end
   %ACT_Tick%; 
   end
%cptmodO_SCH_TRA%; %(| Tick := true when Tick |)**WARNING: unused signals 

%
