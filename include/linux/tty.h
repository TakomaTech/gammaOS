#ifndef _LINUX_TTY_H
#define _LINUX_TTY_H

#include <stddef.h>

void terminal_initialize(void);
void terminal_writestring(const char *data);

#endif /* _LINUX_TTY_H */
