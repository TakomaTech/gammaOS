#include <linux/console.h>
#include <linux/tty.h>

void console_init(void) {
    terminal_writestring("Console driver initialized.\n");
}
