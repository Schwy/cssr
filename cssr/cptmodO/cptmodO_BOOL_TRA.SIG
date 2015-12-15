process cptmodO_BOOL_TRA =
     { integer M; }
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
       |) |)
   where 
   boolean Tick;
   process ACT_Tick =
        ( )
      (| when Tick ^= n_ret ^= C_CLK ^= C_CLK_9
       | (| n := (0 when C_CLK) default ((n_ret+1) when C_CLK_9)
          | n_ret := n$1 init 0
          | C_CLK := n>=M
          | C_CLK_9 := not (n>=M)
          |)
       |)
      where 
      boolean C_CLK, C_CLK_9;
      integer n_ret;
      end
   %ACT_Tick%; 
   end
%cptmodO_BOOL_TRA%; %(| Tick := true when Tick |)**WARNING: unused signals 

%
