//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 7.4b. It demonstrates the traversal of a one-dimensional array. An array variable is declared with string literals. The implementation also uses two other variables. A variable t stores string values and is initially set to empty. Another variable (ie. i) initialized with value zero is the counter of a while-loop. The while-loop traverses the elements of array A by using the counter i as an index. At each iteration, the value from an element is added together with other string characters to the variable t. Once the end of the while-loop cycle is reached, the value collected in the variable t is printed in the output for inspection. Note that the source code is in context and works with copy/paste.

using System;
class HelloWorld {
  static void Main() {
      
    string[] A = {"a", "b", "c", "d", "e"};

    int i = 0;
    string t = "";

    do {
        t += "\n i[" + i + "]=" + A[i];
        i++;
    }
    while (i < A.Length);
    
    Console.WriteLine(t);
  }
}
