// Purpose: test immediate extender instructions. In the CPU dump R0 should contain 0xDEADBEEF.

    .text
    .globl _start

_start:
    {
        call init
    }
	{
		r2=##-559038737
	}
    {
        p0 = cmp.eq(r2, ##-559038737); if (p0.new) jump:t pass
        jump fail
    }
