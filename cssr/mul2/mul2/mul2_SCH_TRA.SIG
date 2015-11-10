process mul2_SCH_TRA =
     ( ? real e;
       ! real s;
     )
   pragmas 
      Main
      DefinedClockHierarchy
   end pragmas
   (| (| Tick := true
       | when Tick ^= e ^= s
       | (| s := 2.0*e |)
       |)
    | (| {e --> s} when Tick |)
    |)
   where 
   boolean Tick;
   end
%mul2_SCH_TRA%; %(| Tick := true when Tick |)**WARNING: unused signals 

%
