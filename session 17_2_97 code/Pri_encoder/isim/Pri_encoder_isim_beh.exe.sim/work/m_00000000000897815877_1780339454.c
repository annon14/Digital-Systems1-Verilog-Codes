/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Saeid/Desktop/Digital_system1/17_2_97 session code/Pri_encoder/Pri_Encoder.v";
static unsigned int ng1[] = {15U, 7U};
static unsigned int ng2[] = {3U, 0U};
static unsigned int ng3[] = {7U, 3U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 1U};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {0U, 0U};
static unsigned int ng8[] = {3U, 3U};
static unsigned int ng9[] = {0U, 3U};



static void Always_27_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(30, ng0);
    t11 = (t0 + 1208U);
    t12 = *((char **)t11);

LAB9:    t11 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_xcompare(t12, 4, t11, 4);
    if (t13 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_xcompare(t12, 4, t2, 4);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_xcompare(t12, 4, t2, 4);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_xcompare(t12, 4, t2, 4);
    if (t13 == 1)
        goto LAB16;

LAB17:
LAB19:
LAB18:    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB20:    goto LAB8;

LAB10:    xsi_set_current_line(31, ng0);
    t14 = ((char*)((ng2)));
    t15 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t15, t14, 0, 0, 2, 0LL);
    goto LAB20;

LAB12:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 2, 0LL);
    goto LAB20;

LAB14:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 2, 0LL);
    goto LAB20;

LAB16:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 2, 0LL);
    goto LAB20;

}


extern void work_m_00000000000897815877_1780339454_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000000897815877_1780339454", "isim/Pri_encoder_isim_beh.exe.sim/work/m_00000000000897815877_1780339454.didat");
	xsi_register_executes(pe);
}
