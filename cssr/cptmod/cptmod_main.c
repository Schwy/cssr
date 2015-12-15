
/*
  Generated by Polychrony version  V4.19
*/
#include "cptmod_types.h"
#include "cptmod_externals.h"
#include "cptmod_body.h"
EXTERN void cptmod_OpenIO();
EXTERN void cptmod_CloseIO();
EXTERN void cptmod_stepIO_begin();
EXTERN void cptmod_stepIO_end();

EXTERN int main()
{
    boolean code;
    cptmod_OpenIO();
    code = cptmod_initialize();
    while(code)
      {
        cptmod_stepIO_begin();
        code = cptmod_step();
        cptmod_stepIO_end();
    }
    cptmod_CloseIO();
}
