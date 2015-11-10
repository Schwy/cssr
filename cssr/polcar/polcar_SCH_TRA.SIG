process polcar_SCH_TRA =
     ( ? dreal r, a;
       ! dreal x, y;
     )
   pragmas 
      Main
      DefinedClockHierarchy
   end pragmas
   (| (| Tick := true
       | when Tick ^= r ^= a ^= x ^= y
       | ACT_Tick{}
       |)
    | (| x --> y
       | {a --> x} when Tick
       | r --> a
       |)
    |)
   where 
   boolean Tick;
   process ACT_Tick =
        ( )
      (| (| x := r*cos(a)
          | y := r*sin(a)
          |) |)
   %ACT_Tick%; 
   end
%polcar_SCH_TRA%; %(| Tick := true when Tick |)**WARNING: unused signals 

%
