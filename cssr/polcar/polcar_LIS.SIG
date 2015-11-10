process polcar =
     ( ? dreal r, a;
       ! dreal x, y;
     )
   (| x := r*cos{a}%**ERROR: Expected a process call
           %%**ERROR: Missing argument:
           %
    | y := r*sin{a}%**ERROR: Expected a process call
           %%**ERROR: Missing argument:
           %
    |)
   where 
   real temp;
   function cos =
        ( ? dreal a;
          ! dreal kos;
        )
      (| kos := cos(a) |)
   %cos%; 
   function sin =
        ( ? dreal a;
          ! dreal syn;
        )
      (| syn := sin(a) |)
   %sin%; 
   end
%polcar%; 
