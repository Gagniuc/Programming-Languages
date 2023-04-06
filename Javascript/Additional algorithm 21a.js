//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 21. Demonstrates the implementation of conditional statements on array variables. Three elements of an array variable (A) are declared and filled with values. A condition triggers a statment to increment the value of the last element of the array (ie. A[2]), only if the value of the first element (ie. A[0]) is less than the value of the second element (ie. A[1]), otherwise a decrement is applied to the value of the last element of the array. Note that the source code is in context and works with copy/paste.
//These JavaScript examples are written for the Rhino JavaScript engine. To use this particular Javascript example in browsers, please put the source between the <script></script> tags, and replace any "print" keyword with the "alert" keyword.

var A = [1, 2, 3];

if(A[0] < A[1]){A[2] += 1;}

print("A[2]=" + A[2]);
