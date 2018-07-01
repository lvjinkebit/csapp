#include <stdlib.h>
#include <stdio.h>

typedef unsigned char *byte_pointer;
    void show_bytes(byte_pointer start, size_t len) {
        size_t i;
        for (i = 0; i < len; i++)
            printf("%.2x", start[i]);
        printf("\n");
    }
void show_int(int x) {
        show_bytes((byte_pointer)&x,sizeof(int));
    }
    void show_float(float x) {
        show_bytes((byte_pointer) &x, sizeof(float));
    }

    void show_pointer(void *x) {
        show_bytes((byte_pointer) &x, sizeof(void *));
    }
    void decode(long *xp,long *yp,long *zp){
        long i,j,k;
        i = *xp;
        j = *yp;
        k = *zp;
        *yp = i;
        *zp = j;
        *xp = k;
    }
    long scale(long x,long y,long z){
        long t = 5*x + 2*y + 8*z;
        return t;
    }
    long leap(long x,long y){
        long i,j,k,l,m,n;
        //k = x + 4 * y;
        l = 10 + 9*x;

        //j = x + y;
//        i = x + 4 * y;
//        l = 7+ 8 * y;
//        m = 10 + 4 * y;
//        n = 9 + x + 2 * y;
        return l;
    }
    long shift(long x,long n){
        x <<= 4;
        x >>= n;
        return x;
    }
    void address(){
        int x = 100;
        int y = 200;
        int z = 300;
        printf("x 地址变量是 %p\n",&x);
        printf("y 地址变量是 %p\n",&y);
        printf("z 地址变量是 %p\n",&z);
    }
    void pointer(){
        int x = 100;
        int y = 200;
        int *ptr = &x;
        printf("x的地址为%p,值为%d\n",&x,x);
        printf("x的地址为%p,值为%d\n",ptr,*ptr);
        printf("ptr的地址为%p,值为%d\n",&ptr,*ptr);
        printf("ptr 与 &x 相等吗？%d\n",ptr == &x);

    }
    void constPointer(){
        int a = 100;
        int b = 200;
        const int *p = &a;
        int *const q = &b;

        printf("a = %d,*p = %d\n",a,*p);
        printf("b = %d,*q = %d\n",a,*q);

        p = &b;
        printf("%d\n",*p);
        *q = 50;
        printf("%d",b);

    }
    void diamond(){
        char *diamond = "5克拉";
        char *p1 = diamond;
        char **p2 = &p1;
        char ***p3 = &p2;
        printf("diamond = %p\n",diamond);
        printf("&p1 = %p,p1 = %p\n",&p1,p1);
        printf("&p2 = %p,p2 = %p\n",&p2,p2);
        printf("&p3 = %p,p3 = %p\n",&p3,p3);
        printf("%s %s %s",p1,*p2,**p3);
    }
    int main(){
        int a = 10;
        float b = 10.0;
        char c = 30;
        int *pval = &a;
        show_int(a);
        show_float(b);
        show_pointer(pval);
        address();
        pointer();
        constPointer();
        diamond();
        return 0;
}



