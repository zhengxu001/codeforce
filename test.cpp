#include <stdio.h>

int main(int argc, char const *argv[])
{
  int n, a[200002];
  int b[200002];

  for(int i=0;i<200002;i++)
    b[i] = -1;
  scanf("%d", &n);
  int neset = 1;
  for(int i=0;i<n;i++)
    scanf("%d", &a[i]);
  for(int i=0; i<n; i++)
  {
    if(b[a[i]] == 1)
    {
      neset += 1;
    }
    else
    {
      b[a[i]] = 1;
    }

  }
  printf("%d", neset);
}