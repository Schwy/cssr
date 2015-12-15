process identite_SCH_TRA =
     ( ? real e;
       ! real s;
     )
   pragmas 
      Main
      DefinedClockHierarchy
   end pragmas
   (| (| Tick := true
       | when Tick ^= e ^= s
       | ACT_Tick{}
       |)
    | (| {temp --> s} when Tick
       | {e --> temp} when Tick
       |)
    |)
   where 
   boolean Tick;
   process ACT_Tick =
        ( )
      (| when Tick ^= temp
       | (| s := 0.5*temp
          | temp := 2.0*e
          |)
       |)
      where 
      real temp;
      end
   %ACT_Tick%; 
   end
%identite_SCH_TRA%; %(| Tick := true when Tick |)**WARNING: unused signals 

%
