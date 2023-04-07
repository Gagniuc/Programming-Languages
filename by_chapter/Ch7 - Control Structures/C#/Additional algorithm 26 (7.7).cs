//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 7.7. It demonstrates the use of nested for-loops. It shows the traversal of a two-dimensional array by a nested for-loop structure. A 2D-array variable (A) is declared with mixed datatypes, namely with string literals and number literals. A string variable t is initially set to empty. Another two variables (ie. i and j) are initialized with value zero and are the main counters of nested for-loops. The upper limit of each for-loop is established by the two dimensions, namely the number of rows and columns from matrix A. The two for-loops traverse the elements of array A by using the counters i and j as an index. At each iteration, the value from an element is added to the content of variable t. Once the end of the nested for-loops is reached, the value collected in variable t is printed in the output for inspection. The end result is the enumeration of each value in the output, in a linear manner. Note that the source code is in context and works with copy/paste.

using System;
class HelloWorld {
  static void Main() {
    
    string[, ] A = new string[, ] {
                                    {"a","b"},
                                    {"c","d"},
                                    {"e","f"},
                                    {"g","h"}
                                  };
    string t = "";
    
    int x = A.GetLength(0);
    int y = A.GetLength(1);

    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) { 
    
            t += "\n A["+i+","+j+"]=" + A[i,j];
        }
    }

    Console.WriteLine(t);
  }
}