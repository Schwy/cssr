process metro_BOOL_TRA =
     ( ? boolean btn_auto, btn_manu, btn_exp, C_btn_auto, C_btn_manu, C_btn_exp, C_CLK_49, C_CLK_70;
       ! boolean MANU, AUTO, ARRET;
     )
   pragmas 
      Main
   end pragmas
   (| (| Tick := true
       | when Tick ^= C_btn_auto ^= C_btn_manu ^= C_btn_exp ^= C_CLK_49 ^= C_CLK_70
       | ACT_Tick{}
       |)
    | (| (| when C_CLK_49 ^= when C_CLK_140 |)
       | (| when C_CLK_70 ^= when C_CLK_136 |)
       | (| when C_CLK_134 ^= when C_CLK_136 |)
       | (| when C_CLK_140 ^= when C_CLK_147 |)
       |)%**WARNING: Clocks constraints
      %
    |)
   where 
   boolean Tick;
   process ACT_Tick =
        ( )
      (| when Tick ^= C_CLK_95 ^= C_AUTO ^= btn_exp_98 ^= btn_manu_104 ^= zAUTO_110 ^= btn_auto_116 ^= zMANU_122 ^= C_CLK_101 ^= C_CLK_103 ^= C_CLK_105 ^= C_CLK_107 ^= C_CLK_109 ^= C_CLK_111 ^= C_CLK_113 ^= C_CLK_115 ^= C_CLK_117 ^= C_CLK_119 ^= C_CLK_121 
         ^= C_CLK_123 ^= C_CLK_125 ^= C_CLK_134 ^= C_CLK_136 ^= C_CLK_140 ^= C_CLK_147
       | (| when C_btn_auto ^= btn_auto |)
       | (| when C_btn_manu ^= btn_manu |)
       | (| when C_btn_exp ^= btn_exp |)
       | (| when C_AUTO ^= MANU ^= AUTO ^= ARRET ^= zMANU ^= zAUTO
          | ACT_C_AUTO{}
          |)
       | (| C_CLK_95 := C_btn_auto or C_btn_manu
          | C_AUTO := C_CLK_95 or C_btn_exp
          | btn_exp_98 := left_tt ( btn_exp,C_btn_exp )
          | btn_manu_104 := left_tt ( btn_manu,C_btn_manu )
          | zAUTO_110 := left_tt ( zAUTO,C_AUTO )
          | btn_auto_116 := left_tt ( btn_auto,C_btn_auto )
          | zMANU_122 := left_tt ( zMANU,C_AUTO )
          | C_CLK_101 := btn_manu_104 and zAUTO_110
          | C_CLK_103 := btn_auto_116 and zMANU_122
          | C_CLK_105 := C_CLK_103 or btn_exp_98
          | C_CLK_107 := C_CLK_105 or btn_manu_104
          | C_CLK_109 := C_CLK_101 or btn_exp_98
          | C_CLK_111 := C_CLK_109 or btn_auto_116
          | C_CLK_113 := btn_exp_98 or btn_auto_116
          | C_CLK_115 := (not btn_exp_98) and C_CLK_101
          | C_CLK_117 := (not btn_exp_98) and C_CLK_103
          | C_CLK_119 := (not C_CLK_111) and C_AUTO
          | C_CLK_121 := (not C_CLK_107) and C_AUTO
          | C_CLK_123 := (not C_CLK_105) and btn_manu_104
          | C_CLK_125 := (not C_CLK_109) and btn_auto_116
          | C_CLK_134 := C_CLK_70 or btn_exp_98
          | C_CLK_136 := C_CLK_113 or C_CLK_70
          | C_CLK_140 := (not btn_exp_98) and C_CLK_70
          | C_CLK_147 := (not btn_exp_98) and C_CLK_136
          |)
       |)
      where 
      boolean zMANU, zAUTO, C_CLK_95, C_AUTO, btn_exp_98, btn_manu_104, zAUTO_110, btn_auto_116, zMANU_122, C_CLK_101, C_CLK_103, C_CLK_105, C_CLK_107, C_CLK_109, C_CLK_111, C_CLK_113, C_CLK_115, C_CLK_117, C_CLK_119, C_CLK_121, C_CLK_123, C_CLK_125, 
             C_CLK_134, C_CLK_136, C_CLK_140, C_CLK_147;
      process ACT_C_AUTO =
           ( )
         (| when C_AUTO ^= zARRET
          | (| MANU := (false when btn_exp) default (true when C_CLK_115) default (false when C_CLK_125) default (zMANU when C_CLK_119)
             | AUTO := (false when btn_exp) default (true when C_CLK_117) default (false when C_CLK_123) default (zAUTO when C_CLK_121)
             | ARRET := (true when btn_exp) default (zARRET when C_CLK_49)
             | zMANU := MANU$1 init true
             | zAUTO := AUTO$1 init false
             | zARRET := ARRET$1 init false
             |)
          |)
         where 
         boolean zARRET;
         end
      %ACT_C_AUTO%; 
      end
   %ACT_Tick%; 
   end
%metro_BOOL_TRA%; %(| XZX := (btn_auto when C_btn_auto) default (btn_manu when CLK_53) default (btn_exp when CLK_56)
                    | XZX_54 := (btn_auto when C_btn_auto) default (btn_manu when CLK_53) default (btn_exp when CLK_56)
                    | XZX_57 := (btn_auto when C_btn_auto) default (btn_manu when CLK_53) default (btn_exp when CLK_56)
                    | Tick := true when Tick
                    | C_CLK_91 := not C_btn_auto
                    | C_CLK_93 := not C_btn_manu
                    | C_CLK_97 := not C_btn_exp
                    | C_CLK_127 := not C_CLK_49
                    | C_CLK_131 := not C_CLK_70
                    | C_CLK_14 := not btn_exp
                    | C_CLK_17 := not btn_manu
                    | C_CLK_20 := not zAUTO
                    | C_CLK_26 := not btn_auto
                    | C_CLK_37 := not zMANU
                    |)**WARNING: unused signals 

%
