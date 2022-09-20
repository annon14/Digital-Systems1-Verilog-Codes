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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_00000000001358910285_0580000043_init();
    xilinxcorelib_ver_m_00000000001358910285_3614873006_init();
    xilinxcorelib_ver_m_00000000001687936702_3350134291_init();
    xilinxcorelib_ver_m_00000000000277421008_0371685636_init();
    xilinxcorelib_ver_m_00000000001603977570_1620074453_init();
    work_m_00000000000621624591_4270915224_init();
    work_m_00000000003759397108_1559568175_init();
    work_m_00000000003105463177_0188370947_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003105463177_0188370947");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
