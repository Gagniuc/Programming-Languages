//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 20. Demonstrates the implementation of conditional statements. Three variables a, b and c are declared and assigned to different values. A condition triggers a statement to increment the value of variable c, only if the value of variable a is less than the value of variable b, otherwise a decrement is applied to the value of c. Note that the source code is in context and works with copy/paste.

#include <iostream>
using namespace std;

int main()
{
    int a = 1;
    int b = 2;
    int c = 3;

    if(a < b){c += 1;} else {c -= 1;}

    cout<<"c="<<c;

    return 0;
}