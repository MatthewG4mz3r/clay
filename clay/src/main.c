#include "../include/clay.h"
#include <stdio.h>

int error_invalid_file = 247;

int main(int argc, char* argv[])
{
    if (argc < 2)
    {
        printf("[FATAL]: invalid file {'\\0'}\n");
        printf("[error %i]\n", error_invalid_file);
        return error_invalid_file;
    }

    return 0;
}