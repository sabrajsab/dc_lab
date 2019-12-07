#include<omp.h>
#include<stdio.h>
int main()
{
int a=-1;
#pragma omp parallel for
for(int i=0;i<100000;++i)
{
if(i>a)
#pragma omp critical
a=i;
}
printf("hello(%d)",a);
return 0;
}
