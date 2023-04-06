#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 17. It shows how to get the total number of elements of an array. First an array literal A is declared, that contains three elements, each with a string literal (one character). Next, a variable x is declared and a value is assigned to it. The value in question represents the number of elements in array A and is provided either by an in-built function or by a method of the array object, depending on the computer language used. Finally, the content of variable x is displayed in the output for inspection. One thing to note is that in VB, the ubound internal function returns the last index in the array and not the total number of elements as expected from the other examples. Note that the source code is in context and works with copy/paste.

A = ["a", "b", "c"]

x = A.size

puts (x)
