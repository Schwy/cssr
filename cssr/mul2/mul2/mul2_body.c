
/*
  Generated by Polychrony version  V4.19
*/
#include "mul2_types.h"
#include "mul2_externals.h"
#include "mul2_body.h"

/*  ==> parameters and indexes */
/*  ==> input signals     */
static float e;
/*  ==> output signals    */
static float s;
/*  ==> local signals     */

EXTERN boolean mul2_initialize()
{
    mul2_step_initialize();
    return TRUE;
}

static void mul2_step_initialize()
{
}

EXTERN boolean mul2_step()
{
    if (!r_mul2_e(&e)) return FALSE;
    s = 2.0 * e;
    w_mul2_s(s);
    mul2_step_finalize();
    return TRUE;
}

EXTERN boolean mul2_step_finalize()
{
    mul2_step_initialize();
    return TRUE;
}
