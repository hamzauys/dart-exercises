#include <iostream>
using namespace std;

int factorial(int n) {
    if (n <= 1)
        return 1;
    return n * factorial(n - 1);
}

int main() {
    int value = factorial(3);
    cout << "3! = " << value << endl;  // Output: 3! = 6
    return 0;
}
