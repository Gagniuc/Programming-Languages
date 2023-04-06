#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 16. It shows how to change values in existing array elements. An array variable A is declared. String literals are assigned to each element of A. The value from the first element of the array variable A, is assigned to a variable x. Then, a literal string value (ie. "d") is assigned to the second element of variable array A, thus erasing the previous value (ie. "a") from this element. Next, the value from the third element of A is assigned to the second element of A, thus deleting the initial value (ie. "b") from the second element. The value stored in variable x is assigned to the third element of array A. At the end, the values from each element are displayed in the output for inspection. Here, the initial sequence "abc" was transformed into the sequence "dcb". Note that the source code is in context and works with copy/paste.

A = ["a", "b", "c"]

x = A[1]

A[0] = "d"
A[1] = A[2]
A[2] = x

puts (A[0] + A[1] + A[2])
