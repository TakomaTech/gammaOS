#include <linux/kernel.h>
#include <linux/tty.h>
#include <linux/console.h>
#include <linux/init.h>

void kmain(void) {
    terminal_initialize();
    console_init();
    init_start();

    terminal_writestring("Gamma Kernel 0.1\n");
    terminal_writestring("Free, GPLv3, Unix-like base.\n");
    terminal_writestring("Booted successfully.\n");
    while (1) {
        asm volatile("hlt");
    }
}
