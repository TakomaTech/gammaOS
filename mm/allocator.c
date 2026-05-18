#include <linux/mm.h>
#include <stddef.h>

void *kmalloc(size_t size) {
    (void)size;
    return (void *)0;
}
