//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 9.1. It shows different experiments on recursive functions. A total of six examples are shown, in which: 1) A recursive function repeats one (or a group) of characters n times and returns a string of length n. 2) A recursive function sums integers from zero to n. 3) A recursive function computes the factorial for an integer n. 4) A function generated a sequence of numbers based on various rules. 5) A recursive function provides the Fibonacci sequence. 6) A recursive function sums all the integers stored in the elements of an array variable. Note that the source code is in context and works with copy/paste.

using System;
class HelloWorld {
  static void Main() {

    string a = x("*", "", 10);
    Console.WriteLine("Repeat:\n[" + a + "]");
    
    int b = sum(23);
    Console.WriteLine("Sum:[" + b + "]");
    
    int c = factorial(10);
    Console.WriteLine(
           "Factorial:\n[" + c + "]"
                     );
    
    int[] d = sequence(5, new int[5], 0, 5);

    Console.WriteLine(
              "A sequence:\n[{0}", 
              string.Join(",", d) + "]"
                     );
    
   int[] e = fibonacci(2, 
             new int[3] {1,2,3}, 5);
   Console.WriteLine(
             "Fibonacci:\n[{0}", 
             string.Join(",", e) + "]"
                    );
    
    int[] q = {1, 3, 3, 4, 5, 9};
    
    int f = sum_array(q.Length - 1, q, 0);
    Console.WriteLine(
           "Sum array:[" + f + "]"
                     );
  }

    // repeat string n times
    static string x(string c, string s, 
                    int n){
        s += c;
        
        if(s.Length>=n){
            return s;
        } else {
            return x(c, s, n);
        }
    }
    
    
    // sum from 0 to n
    static int sum(int n){
        if (n <= 1) {return n;}
        return n + sum(n - 1);
    }
    
    
    // factorial from 0 to n
    static int factorial(int n){
        if (n <= 1) {
            return n;
        } else {
            return factorial(n - 1) * n;
        }
    }
    
    
     // just a sequence
     static int[] sequence(int n, int[] m, 
                           int i, int t){
        m[i] = n;
        i++;
        
        if (i >= t) {
          return m;
        } else {
          return sequence((n-1)+(n-2), 
                              m, i, t);
        }
    }
    
    
     // fibonacci
     static int[] fibonacci(int n, int[] m, 
                            int t){
        n++;
        Array.Resize(ref m, n+1);
        m[n] = m[n-1] + m[n-2];
        
        if (n >= t) {
            return m;
        } else {
            return fibonacci(n, m, t);
        }
    }
    

    // sum all from array
    static int sum_array(int n, int[] q, 
                         int r){
        r += q[n];
        
        if (n <= 0) {
            return r;
        } else {
            return sum_array(n - 1, q, r);
        }
    }
}
