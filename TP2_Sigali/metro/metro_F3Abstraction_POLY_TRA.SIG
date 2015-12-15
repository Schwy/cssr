process metro_F3Abstraction_POLY_TRA =
     ( ? boolean btn_exp, btn_manu, btn_auto;
       ! boolean MANU, AUTO, ARRET;
     )
   pragmas 
      Partition "booleanPart"
   end pragmas
   (| (| CLK_btn_auto := ^btn_auto
       | CLK_btn_auto ^= btn_auto
       | ACT_CLK_btn_auto{}
       |)
    | (| CLK_btn_manu := ^btn_manu
       | CLK_btn_manu ^= btn_manu
       | ACT_CLK_btn_manu{}
       |)
    | (| CLK_btn_exp := ^btn_exp
       | CLK_btn_exp ^= btn_exp
       | ACT_CLK_btn_exp{}
       |)
    | (| CLK_21 := CLK_16 ^* CLK_19 |)
    | (| CLK_23 := CLK_21 ^- CLK_13 |)
    | (| CLK_24 := CLK_13 ^+ CLK_21 |)
    | (| CLK_29 := CLK_25 ^- CLK_24 |)
    | (| CLK_30 := CLK_24 ^+ CLK_25 |)
    | (| CLK_32 := CLK_MANU ^- CLK_30 |)
    | (| CLK_MANU := CLK_30 ^+ CLK_MANU
       | CLK_MANU ^= MANU
       | ACT_CLK_MANU{}
       |)
    | (| CLK_38 := CLK_25 ^* CLK_36 |)
    | (| CLK_39 := CLK_38 ^- CLK_13 |)
    | (| CLK_40 := CLK_13 ^+ CLK_38 |)
    | (| CLK_43 := CLK_16 ^- CLK_40 |)
    | (| CLK_44 := CLK_16 ^+ CLK_40 |)
    | (| CLK_46 := CLK_AUTO ^- CLK_44 |)
    | (| CLK_AUTO := CLK_44 ^+ CLK_AUTO
       | CLK_AUTO ^= AUTO
       | ACT_CLK_AUTO{}
       |)
    | (| CLK_49 := CLK_ARRET ^- CLK_13 |)
    | (| CLK_ARRET := CLK_13 ^+ CLK_ARRET
       | CLK_ARRET ^= ARRET
       | ACT_CLK_ARRET{}
       |)
    |)
   where 
   event CLK_ARRET, CLK_49, CLK_AUTO, CLK_46, CLK_44, CLK_43, CLK_40, CLK_39, CLK_38, CLK_36, CLK_MANU, CLK_32, CLK_30, CLK_29, CLK_25, CLK_24, CLK_23, CLK_21, CLK_19, CLK_16, CLK_13, CLK_btn_exp, CLK_btn_manu, CLK_btn_auto;
   process ACT_CLK_btn_auto =
        ( )
      (| (| CLK_25 := when btn_auto
          | CLK_26 := when (not btn_auto)
          |) |)
      where 
      event CLK_26;
      end
   %ACT_CLK_btn_auto%; 
   process ACT_CLK_btn_manu =
        ( )
      (| (| CLK_16 := when btn_manu
          | CLK_17 := when (not btn_manu)
          |) |)
      where 
      event CLK_17;
      end
   %ACT_CLK_btn_manu%; 
   process ACT_CLK_btn_exp =
        ( )
      (| (| CLK_13 := when btn_exp
          | CLK_14 := when (not btn_exp)
          |) |)
      where 
      event CLK_14;
      end
   %ACT_CLK_btn_exp%; 
   process ACT_CLK_MANU =
        ( )
      (| CLK_MANU ^= zMANU
       | (| CLK_36 := when zMANU
          | CLK_37 := when (not zMANU)
          |)
       | (| zMANU := MANU$1 init true
          | MANU := (not CLK_13) default CLK_23 default (not CLK_29) default (zMANU when CLK_32)
          |)
       |)
      where 
      event CLK_37;
      boolean zMANU;
      end
   %ACT_CLK_MANU%; 
   process ACT_CLK_AUTO =
        ( )
      (| CLK_AUTO ^= zAUTO
       | (| CLK_19 := when zAUTO
          | CLK_20 := when (not zAUTO)
          |)
       | (| zAUTO := AUTO$1 init false
          | AUTO := (not CLK_13) default CLK_39 default (not CLK_43) default (zAUTO when CLK_46)
          |)
       |)
      where 
      event CLK_20;
      boolean zAUTO;
      end
   %ACT_CLK_AUTO%; 
   process ACT_CLK_ARRET =
        ( )
      (| CLK_ARRET ^= zARRET
       | (| zARRET := ARRET$1 init false
          | ARRET := CLK_13 default (zARRET when CLK_49)
          |)
       |)
      where 
      boolean zARRET;
      end
   %ACT_CLK_ARRET%; 
   end
%metro_F3Abstraction_POLY_TRA%; 
