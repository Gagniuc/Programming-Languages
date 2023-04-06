//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 7.3a. Here the positive increment while-loop structure is demonstrated. A variable i is declared and set to zero. A while loop structure increments variable i from its initial value to its upper limit (number five). At each iteration, variable i is printed in the output. The result is an enumeration of values from 0 to 4. Note that the source code is in context and works with copy/paste.
//These JavaScript examples are written for the Rhino JavaScript engine. To use this particular Javascript example in browsers, please put the source between the <script></script> tags, and replace any "print" keyword with the "alert" keyword.

let i = 0;

while (i < 5) {
  print("i = " + i);
  i++;
}
