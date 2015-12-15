process metro =
     ( ? boolean btn_auto, btn_manu, btn_exp;
       ! boolean MANU, AUTO, ARRET;
     )
   (| zMANU := MANU$1
    | zAUTO := AUTO$1
    | zARRET := ARRET$1
    | MANU := (false when btn_exp) default (true when zAUTO when btn_manu) default (zMANU when ont%**ERROR: Process ont not declared
              %(btn_auto)%**ERROR: Missing argument:
              %) default false
    | AUTO := (false when btn_exp) default (true when zMANU when btn_auto) default (zAUTO when (not btn_manu)) default false
    | ARRET := (true when btn_exp) default zARRET
    |)
   where 
   boolean zMANU init true;
   boolean zAUTO init false;
   boolean zARRET init false;
   end
%metro%; 
