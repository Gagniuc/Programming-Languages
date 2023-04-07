//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 6.3. It shows explicit and implicit declarations of variables as well as examples of expressions and their evaluations for all computer languages used here. It mainly shows the connection between operators and data types. Note that the source code is in context and works with copy/paste.

#include <iostream>
using namespace std;

int main()
{
    int x = 12;
    int y = 15;
    string color = "green";
    string xname = "Paul";
    bool logic = true;
    
    cout<<logic<<"\n";
    cout<<(x + y)<<"\n";
    cout<<(color + to_string(x))<<"\n";
    cout<<(to_string(x) + xname)<<"\n";
    cout<<(to_string(x + y) + color)<<"\n";
    cout<<(color + to_string(x + y))<<"\n";
    cout<<(x + x / x - x * x)<<"\n";
}
