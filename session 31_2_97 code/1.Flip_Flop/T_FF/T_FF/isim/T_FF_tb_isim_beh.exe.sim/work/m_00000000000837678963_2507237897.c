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
static const char *ng0 = "D:/Homeworks/FPGA_codes/T_FF/T_FF/T_FF.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};



static void Always_26_0(char *t0)
{
    char t6[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB8;

LAB5:    if (t18 != 0)
        goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;

LAB8:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB15;

LAB13:    if (*((unsigned int *)t2) == 0)
        goto LAB12;

LAB14:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;

LAB15:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    t16 = *((unsigned int *)t6);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);

LAB18:
LAB11:    goto LAB2;

LAB7:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(28, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    goto LAB11;

LAB12:    *((unsigned int *)t6) = 1;
    goto LAB15;

LAB16:    xsi_set_current_line(31, ng0);
    t7 = (t0 + 1768);
    t8 = (t7 + 56U);
    t21 = *((char **)t8);
    memset(t30, 0, 8);
    t22 = (t21 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t21);
    t24 = (t23 & t20);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t22) == 0)
        goto LAB19;

LAB21:    t28 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t28) = 1;

LAB22:    t29 = (t30 + 4);
    t31 = (t21 + 4);
    t26 = *((unsigned int *)t21);
    t27 = (~(t26));
    *((unsigned int *)t30) = t27;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t31) != 0)
        goto LAB24;

LAB23:    t36 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t36 & 1U);
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 1U);
    t38 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t38, t30, 0, 0, 1, 0LL);
    goto LAB18;

LAB19:    *((unsigned int *)t30) = 1;
    goto LAB22;

LAB24:    t32 = *((unsigned int *)t30);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t30) = (t32 | t33);
    t34 = *((unsigned int *)t29);
    t35 = *((unsigned int *)t31);
    *((unsigned int *)t29) = (t34 | t35);
    goto LAB23;

}


extern void work_m_00000000000837678963_2507237897_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_00000000000837678963_2507237897", "isim/T_FF_tb_isim_beh.exe.sim/work/m_00000000000837678963_2507237897.didat");
	xsi_register_executes(pe);
}
