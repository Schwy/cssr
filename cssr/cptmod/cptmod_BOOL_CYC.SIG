process cptmod_BOOL_CYC =
     ( )
   (| (| temp := temp+1 |)
    | (| {temp --> temp} when Tick |)
    |)
%cptmod_BOOL_CYC%; 
