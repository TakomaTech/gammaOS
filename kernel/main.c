#include <linux/kernel.h>
#include <linux/tty.h>

void kmain(void) {
    terminal_initialize();
    terminal_writestring("Gamma Kernel 0.1\n");
    terminal_writestring("Free, GPLv3, Unix-like base.\n");
    terminal_writestring("Booted successfully.\n");
    while (1) {
        asm volatile("hlt");
    }
}
