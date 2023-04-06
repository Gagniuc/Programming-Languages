//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 13. It shows how to create a multi-valued one-dimensional array variable using literals. In this example an array variable A is used to store only string literals and an array variable B is used to store integer literals. In languages such as Javascript, PHP, PERL, Ruby or Python, array variables can store several types of literals, including objects. In languages such as Java, C# and VB, array variables can store only one type of literal. Note that the source code is in context and works with copy/paste.
//These JavaScript examples are written for the Rhino JavaScript engine. To use this particular Javascript example in browsers, please put the source between the <script></script> tags, and replace any "print" keyword with the "alert" keyword.

var A = [];
var B = [];

A = ["a", "b", "c"];
B = [1, 2, 3];

print(A[0] + A[1] + A[2]);
print(B[0] + B[1] + B[2]);
