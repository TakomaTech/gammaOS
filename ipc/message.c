#include <linux/ipc.h>

int ipc_send(int pid, const char *message) {
    (void)pid;
    (void)message;
    return 0;
}
