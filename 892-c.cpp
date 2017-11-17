#include <stdio.h>

int main(int argc, char const *argv[])
{
  int n, a[1000002], b[1000002];
  scanf("%d", &n);
  for(int i=0;i<n;i++)
  {
    scanf("%d", &a[i]);
    b[i] = a[i];
  }
  int r = n-1;
  for(int i=n-1; i>=0; i--)
  {
    if(r==0)
      break;
    int right = i - a[i];
    if(right<0)
      right = 0;
    if(right < r)
    {
      for(int j = right; j<r; j++)
      {
        b[j] = -1;
      }
      r = right;
    }
  }

  int count = 0;
  for(int i=0; i<n; i++)
  { 
    if(b[i]==-1)
      count++;
  }

  printf("%d", n-count);
}

