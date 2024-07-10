#include <rsp.inc>

    .data

TEST:  .half 0x1234

    .text


vxor $v00, $v00
lh t0, %lo(TEST)
mtc2 t0, $v00.e2
break

