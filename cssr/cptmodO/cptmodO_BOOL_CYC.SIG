process cptmodO_BOOL_CYC =
     ( )
   (| (| n := (0 when C_CLK) default ((n_ret+1) when C_CLK_9)
       | C_CLK_9 := not (n>=M)
       |)
    | (| C_CLK := n>=M |)
    | (| n --> C_CLK_9
       | C_CLK_9 --> when C_CLK_9
       | when C_CLK_9 --> n
       |)
    | (| C_CLK --> when C_CLK
       | when C_CLK --> n
       | n --> C_CLK
       |)
    |)
%cptmodO_BOOL_CYC%; 
