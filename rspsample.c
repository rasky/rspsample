#include <libdragon.h>

DEFINE_RSP_UCODE(rsp_test);

int main(void)
{
    debug_init_isviewer();
    debug_init_usblog();
    rsp_init();

    debugf("Loading RSP ucode\n");
    rsp_load(&rsp_test);

    debugf("Running RSP ucode\n");
    rsp_run();

    debugf("Trigger crash\n");
    rsp_crash();
}
