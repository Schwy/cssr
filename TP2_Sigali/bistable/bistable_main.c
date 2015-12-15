
/*
  Generated by Polychrony version  V4.19
*/
#include "bistable_types.h"
#include "bistable_externals.h"
#include "bistable_body.h"
EXTERN void bistable_OpenIO();
EXTERN void bistable_CloseIO();
EXTERN void bistable_stepIO_begin();
EXTERN void bistable_stepIO_end();

EXTERN int main()
{
    boolean code;
    bistable_OpenIO();
    code = bistable_initialize();
    while(code)
      {
        bistable_stepIO_begin();
        code = bistable_step();
        bistable_stepIO_end();
    }
    bistable_CloseIO();
}
