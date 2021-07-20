#include <sys/resource.h>
#include <stdio.h>

int main (int argc, char **argv)
{
    const rlim_t kStackSize = 160 * 1024 * 1024;   // min stack size = 160 MB
    struct rlimit rl;
    int result;

    result = getrlimit(RLIMIT_STACK, &rl);
    if (result == 0)
    {
        if (rl.rlim_cur < kStackSize)
        {
            rl.rlim_cur = kStackSize;
            result = setrlimit(RLIMIT_STACK, &rl);
            if (result != 0)
            {
                fprintf(stderr, "setrlimit returned result = %d\n", result);
            }
        }
    }

    printf("%ld\n", kStackSize);
    int max = 41938040 - 5000;
    printf("%d\n", max);
    int pop[max];

    return 0;
}