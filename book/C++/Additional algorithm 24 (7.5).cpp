//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 24. The for-loop cycle for incrementing some simple variables is demonstrated. Specifically, two variables a and b are declared and initialized. The variable a is initialized to the integer five and the variable b is set to zero. The for-loop is then declared to start at the initial value of i and end at the value indicated by variable a. At each increment, the value in variable i is added to the numeric value stored in variable b. At the end of the loop, the final value stored in variable b is printed to the output for inspection. Note that the source code is in context and works with copy/paste.

#include <iostream>
using namespace std;

int main()
{
    int a = 5;
    int b = 0;
    
    for (int i = 0; i < a; i++) {
        b += i;
    }

    cout<<b;
    return 0;
}
