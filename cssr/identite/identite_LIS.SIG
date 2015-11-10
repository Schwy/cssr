process identite =
     ( ? real e;
       ! real s;
     )
   (| temp := mul{2.0}(e)
    | s := mul{0.5}%**ERROR: Expected a process call
           %*temp%**ERROR: Missing argument:
           %
    |)
   where 
   real temp;
   process mul =
        { real PARAM; }
        ( ? real X;
          ! real Y;
        )
      (| Y := X*PARAM |)
   %mul%; 
   end
%identite%; 
