//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 38. It shows different experiments on recursive functions. A total of six examples are shown, in which: 1) A recursive function repeats one (or a group) of characters n times and returns a string of length n. 2) A recursive function sums integers from zero to n. 3) A recursive function computes the factorial for an integer n. 4) A function generated a sequence of numbers based on various rules. 5) A recursive function provides the Fibonacci sequence. 6) A recursive function sums all the integers stored in the elements of an array variable. Note that the source code is in context and works with copy/paste.

#include <iostream>
#include <string>
using namespace std;

// repeat string n times
string x(string c, string s, int n){
    
    s += c;

    if(s.size()>=n){
        return s;
    } else {
        return x(c, s, n);
    }
}


// sum from 0 to n
int sum(int n){
    if (n <= 1) {return n;}
    return n + sum(n - 1);
}


// factorial from 0 to n
int factorial(int n){
    if (n <= 1) {
        return n;
    } else {
        return factorial(n - 1) * n;
    }
}


// just a sequence
int* sequence(int n, int m[], int i, int t){

    m[i] = n;
    i++;
    
    if (i >= t) {
        return m;
    } else {
        return sequence((n-1)+(n-2), m, i, t);
    }
}


// fibonacci
int* fibonacci(int n, int m[], int t){
    
    n++;
    m[n] = m[n-1] + m[n-2];
    
    if (n >= t) {
        return m;
    } else {
        return fibonacci(n, m, t);
    }
}


// sum all from array
int sum_array(int n, int q[], int r){
    
    r += q[n];
    
    if (n <= 0) {
        return r;
    } else {
        return sum_array(n - 1, q, r);
    }
}


int main()
{
    // repeat string n times
    string a = x("*", "", 10);
    cout<<("Repeat:\n[" + a + "]\n");

    // sum from 0 to n
    int b = sum(23);
    cout<<("Sum:[" + to_string(b) + "]");
    
    // factorial from 0 to n
    int c = factorial(10);
    cout<<("\nFactorial:\n[" + 
    to_string(c) + "]");

    // just a sequence
    int t = 5;
    int* d; //pointer to hold address
    d = sequence(5, new int[t], 0, t); 
    //address of m

    cout<<"\nA sequence:\n[";
    for(int i=0; i<t; i++)
    {cout<<d[i]<<",";} 
    //d[i] is equivalent to *(d+i)
    cout<<"]";

    // fibonacci
    t = 7; int* e; 
    //e pointer to hold address
    e = fibonacci(2, new int[8]{0,1,2}, t);
    
    cout<<"\nFibonacci:\n[";
    for(int i=0; i<t; i++)
    {cout<<*(e+i)<<",";} 
    //e[i] is equivalent to *(e+i)
    cout<<"]";

    // sum all from array
    int q[] = {1, 3, 3, 4, 5, 9};
    int l = sizeof(q) / sizeof(int);
    
    int f = sum_array(l - 1, q, 0);
    cout<<("\nSum array:[" + 
    to_string(f) + "]");

    return 0;
}
