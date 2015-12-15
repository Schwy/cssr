process cptmod_BOOL_TRA =
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
      (| when Tick ^= temp ^= C_CLK ^= C_CLK_13
       | (| n := (0 when C_CLK) default (temp when C_CLK_13)
          | temp := temp+1
          | C_CLK := temp>M
          | C_CLK_13 := not (temp>M)
          |)
       |)
      where 
      boolean C_CLK, C_CLK_13;
      integer temp;
      end
   %ACT_Tick%; 
   end
%cptmod_BOOL_TRA%; %(| retemp := temp$1 init 0
                     | Tick := true when Tick
                     |)**WARNING: unused signals 

%
