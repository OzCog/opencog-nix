#include <dlfcn.h>
#include <stdio.h>
int main () { 
    void * foo = dlopen("libsmob.so", RTLD_NOW);
    printf("got %p\n", foo);
    if (foo) printf("aok\n"); else printf("yuuck %s\n", dlerror()); 
}