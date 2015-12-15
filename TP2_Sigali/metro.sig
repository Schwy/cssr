process metro = (? boolean btn_auto, btn_manu, btn_exp ! boolean MANU, AUTO, ARRET)
(|	zMANU := MANU $1	%P(zMANU) = P(MANU)%
 |	zAUTO := AUTO $1	%P(zAUTO) = P(AUTO)%
 |	zARRET := ARRET $1	%P(zARRET)= P(ARRET)%
%|	MANU := true when zAUTO when btn_manu when not(btn_exp) default zMANU when not(btn_auto) when not(btn_exp) default false%
%|	MANU := false when btn_exp default true when zAUTO when btn_manu default zMANU when not(btn_auto) default false%
 |	MANU := false when btn_exp default true when zAUTO when btn_manu default false when btn_auto default zMANU
%	P(MANU) = T(btn_exp) + T(zAUTO).T(btn_manu) + T(btn_auto) + P(zMANU) %


%	P(MANU) = %
%	P(MANU) = T(zAUTO).T(btn_manu).T(!btn_exp)+1	%
%	P(MANU) = 1	%
%|	AUTO := true when zMANU when btn_auto when not(btn_exp) default zAUTO when not(btn_manu) when not(btn_exp) default false%
%|	AUTO := false when btn_exp default true when zMANU when btn_auto default zAUTO when not(btn_manu) default false%
 |	AUTO := false when btn_exp default true when zMANU when btn_auto default false when btn_manu default zAUTO
 |	ARRET:= true when btn_exp default zARRET
 |	MANU ^= btn_auto default btn_manu default btn_exp
 |	AUTO ^= btn_auto default btn_manu default btn_exp
 |	ARRET ^= btn_auto default btn_manu default btn_exp
 |)
where
	boolean zMANU init true;
	boolean zAUTO init false;
	boolean zARRET init false;
	
end

