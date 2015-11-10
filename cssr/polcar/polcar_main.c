
/*
  Generated by Polychrony version  V4.19
*/
#include "polcar_types.h"
#include "polcar_externals.h"
#include "polcar_body.h"
EXTERN void polcar_OpenIO();
EXTERN void polcar_CloseIO();
EXTERN void polcar_stepIO_begin();
EXTERN void polcar_stepIO_end();

EXTERN int main()
{
    boolean code;
    polcar_OpenIO();
    code = polcar_initialize();
    while(code)
      {
        polcar_stepIO_begin();
        code = polcar_step();
        polcar_stepIO_end();
    }
    polcar_CloseIO();
}

