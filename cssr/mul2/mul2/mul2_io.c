
/*
  Generated by Polychrony version  V4.19
*/
#include "mul2_types.h"
#include "mul2_externals.h"
static FILE
    *fre,
    *fws;

/*----The following line must be uncommented for the VCD mode*/
/*#define _DUMPFILE_VCD_*/

#ifdef _DUMPFILE_VCD_
#include "pK_vcd.h"
#define _VCD_STEP_ 1
#endif

EXTERN void mul2_OpenIO()
{
    #ifdef _DUMPFILE_VCD_
    fw_DUMPFILE_VCD_ = fopen("W_DUMPFILE_VCD_.dat","w");
    if (!fw_DUMPFILE_VCD_)
        {
        fprintf(stderr,"Can not open file %s\n","W_DUMPFILE_VCD_.dat");
        exit(1);
        }
    
    fprintf(fw_DUMPFILE_VCD_,"$version\n");
    fprintf(fw_DUMPFILE_VCD_,"  Generated by Polychrony version   ");
    fprintf(fw_DUMPFILE_VCD_,"V4.19\n");
    fprintf(fw_DUMPFILE_VCD_,"$end\n");
    fprintf(fw_DUMPFILE_VCD_,"$timescale\n");
    fprintf(fw_DUMPFILE_VCD_,"    1 ns\n");
    fprintf(fw_DUMPFILE_VCD_,"$end\n");
    #endif
    fre = fopen("Re.dat","r");
    if (!fre)
        {
        fprintf(stderr,"Can not open file %s\n","Re.dat");
        exit(1);
        }
    
    #ifdef _DUMPFILE_VCD_
    fprintf(fw_DUMPFILE_VCD_,"$var ");
    fprintf(fw_DUMPFILE_VCD_,"real ");
    fprintf(fw_DUMPFILE_VCD_,"32 ");
    fprintf(fw_DUMPFILE_VCD_,"<_1 ");
    fprintf(fw_DUMPFILE_VCD_,"e ");
    fprintf(fw_DUMPFILE_VCD_,"$end\n");
    #endif
    fws = fopen("Ws.dat","w");
    if (!fws)
        {
        fprintf(stderr,"Can not open file %s\n","Ws.dat");
        exit(1);
        }
    
    #ifdef _DUMPFILE_VCD_
    fprintf(fw_DUMPFILE_VCD_,"$var ");
    fprintf(fw_DUMPFILE_VCD_,"real ");
    fprintf(fw_DUMPFILE_VCD_,"32 ");
    fprintf(fw_DUMPFILE_VCD_,"<_2 ");
    fprintf(fw_DUMPFILE_VCD_,"s ");
    fprintf(fw_DUMPFILE_VCD_,"$end\n");
    #endif
    #ifdef _DUMPFILE_VCD_
    fprintf(fw_DUMPFILE_VCD_,"$enddefinitions ");
    fprintf(fw_DUMPFILE_VCD_,"$end\n");
    #endif
}

EXTERN void mul2_CloseIO()
{
    fclose(fre);
    fclose(fws);
    #ifdef _DUMPFILE_VCD_
    fclose(fw_DUMPFILE_VCD_);
    #endif
}

EXTERN boolean r_mul2_e(float *e)
{
    if (fscanf(fre,"%f",e)==EOF)return FALSE;
    #ifdef _DUMPFILE_VCD_
    print_VCD_float(*e);
    fprintf(fw_DUMPFILE_VCD_,"<_1\n");
    #endif
    return TRUE;
}

EXTERN void w_mul2_s(float s)
{
    fprintf(fws,"%f ",s);
    #ifdef _DUMPFILE_VCD_
    print_VCD_float(s);
    fprintf(fw_DUMPFILE_VCD_,"<_2\n");
    #endif
    fprintf(fws,"\n");
    fflush(fws);
}

EXTERN void mul2_stepIO_begin()
{
    #ifdef _DUMPFILE_VCD_
    fprintf(fw_DUMPFILE_VCD_,"#%d\n",_vcd_counter_);
    _vcd_counter_ = _vcd_counter_ + _VCD_STEP_;
    fflush(fw_DUMPFILE_VCD_);
    _VCD_setStep();
    #endif
}

EXTERN void mul2_stepIO_end()
{
}

