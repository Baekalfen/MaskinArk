#include <stdio.h>

static int fib(int* n){
    if (*n <= 1){
        return *n;
    } else {
        int a = *n-1;
        int b = *n-2;
        return fib(&a) + fib(&b);
    }
}

int main(){
    int N = 10;
    printf("%d\n", fib(&N));
    return 0;
}
