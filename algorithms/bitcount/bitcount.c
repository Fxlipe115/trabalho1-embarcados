int bit_count(long x)
{
        int n = 0;
/*
** The loop will execute once for each bit of x set, this is in average
** twice as fast as the shift/test method.
*/
        if (x) do
              n++;
        while (0 != (x = x&(x-1))) ;
        return(n);
}

#include <stdlib.h>
//#include <stdio.h>

int main(int argc, char *argv[])
{
    long i;
    long n = atol(argv[1]);
    for(i=0; i<n; i++)
    {
          int c = bit_count(i%256);
          //printf("%ld contains %d bit set\n", i, c);
    }
    return 0;
}
