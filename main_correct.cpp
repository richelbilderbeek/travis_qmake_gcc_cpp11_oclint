#include <iostream>

void f() noexcept {
  std::cout << "Hello world\n";
}

int main() { f(); }
