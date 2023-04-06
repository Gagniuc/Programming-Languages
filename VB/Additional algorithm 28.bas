Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 28. It demonstrates the use of a single for-loop for three-dimensional arrays, with an extrapolation to multidimensional arrays. Note that the example shown here is done only for Javascript in order to preserve paper. One can port this in any other language as previously shown. The traversal of a 3D array using only one for-loop structure, is based on the previous example. A 3D-array variable (A) is declared with mixed datatypes, namely with string literals and number literals. The 3D-array is represented by five matrices, in which the columns represent one dimension, the rows represent the second dimension, and the number of matrices, represents the third dimension. Thus, this array can be understood as a cube-like structure. A string variable t is initially set to empty. A variable v is set to zero and it represents the main counter of the for-loop. Another three variables (ie. i, j and d) are initialized with a value of zero and are the main coordinates for array element identifica _
on. Each dimension of array A is stored in variables s, m and n, namely the number of matrices in s, the number of rows in m and the number of columns in n. The upper limit of the for-loop is calculated as s × m × n. Here, the value of the counter v from the for-loop is used, as before, to calculate the i, j and d values that are used as an index to traverse the array variable A. The value of variable j is computed as the v % m. A condition increments a variable i (rows) each time j (columns) equals zero. Thus, both i and j values are computed. However, the value for variable d (matrix number) is calculated as v % (m×n), which provides a value of zero each time a matrix was traversed. Thus, a condition increments variable d and resets variable i, each time the value of k equals zero. At each iteration, the value from an element (d, i, j) is added to the content of variable t. Once the end of the for-loop is reached, the string value collected in variable t is printed in the output for inspection. The en _
result is the enumeration of each value in the output, in a linear manner. Note that the source code is in context and works with copy/paste.

' this example was provided only in Javascript
