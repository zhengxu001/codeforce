#include <iostream>
#include <string>

using namespace std;

int main(int argc, char *argv[])
{
  string s;

  while (cin >> s) {
    size_t result {s.size() / 2 + 1};
    
    for (auto i {'a'}; i <= 'z'; ++i) {
      size_t pre, len {0};

      if (s[0] == i) pre = 0;
      else pre = -1;

      for (size_t j {1}; j < s.size(); ++j) {
	if (s[j] == i) {	  
	  if (len < j - pre) {
	    len = j - pre;
	  }
	  
	  pre = j;
	}
      }

      if (len < s.size() - pre) {
	len = s.size() - pre;
      }

      if (len != 0 && result > len) {
	result = len;
      }
    }

    cout << result << "\n";
  }
  return 0;
}