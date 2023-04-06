//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 15. It shows how to access the values stored in the elements of an array variable. An array literal is declared, in which three string values (three separate characters, namely "a", "b", "c") are stored. Then, two variables x and y are declared, which take values from the elements of the array variable A. Then, once assigned to the x and y variables, the string values are displayed in the output for visualization. As it can be observed, the result obtained after the execution is "bc". Note that the source code is in context and works with copy/paste.
//These JavaScript examples are written for the Rhino JavaScript engine. To use this particular Javascript example in browsers, please put the source between the <script></script> tags, and replace any "print" keyword with the "alert" keyword.

A = ["a", "b", "c"];

var x = A[1];
var y = A[2];

print(x + y);
