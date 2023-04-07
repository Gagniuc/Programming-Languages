//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 8.2. It shows the use of functions by considering complex arguments. Such complex arguments can be strings, array variables, or complex objects. In this specific case, a string and an array variable are used as arguments to a function called "compute". An array variable containing five elements is declared using string literals. Then a string variable t is declared and set to empty. The two variables are passed to the "compute" function. Inside the "compute" function, a for-loop traverses each element of the array a, and it adds the value from it to the accumulator variable t. At the end of the for-loop, the "compute" function returns the value of t, which is assigned to a string variable b, that is further printed onto the output for inspection. Note that the source code is in context and works with copy/paste.

#include <iostream>
using namespace std;
//using std::to_string;

string compute(string t, string a[], int l)
{
    for (int i = 0; i < l; i++) {
        t += "\n a[" + to_string(i) + 
        "]=" + a[i];
    }
    return t;
}


int main()
{
    string a[5] = {"a", "b", "c", "d", "e"};
    string t = "";

    int l = sizeof(a) / sizeof(string);
    string b = compute(t, a, l); 

    cout<<b;

    return 0;
}
