process cptmod_SCH_TRA =
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
       |)
    | (| C_CLK_13 --> n
       | C_CLK --> C_CLK_13
       | {temp --> C_CLK} when Tick
       | top --> temp
       |)
    |)
   where 
   boolean Tick;
   process ACT_Tick =
        ( )
      (| when Tick ^= temp ^= retemp ^= C_CLK ^= C_CLK_13
       | (| n := (0 when C_CLK) default (temp when C_CLK_13)
          | temp := retemp+1
          | retemp := temp$1 init 0
          | C_CLK := temp>M
          | C_CLK_13 := not (temp>M)
          |)
       |)
      where 
      boolean C_CLK, C_CLK_13;
      integer temp, retemp;
      end
   %ACT_Tick%; 
   end
%cptmod_SCH_TRA%; %(| Tick := true when Tick |)**WARNING: unused signals 

%
