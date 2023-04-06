//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 34. This example shows the meaning of constants and global variables. A constant (ie. a) and a global variable (ie. b) are declared, either in the main routine (e.g. in Javascript, PHP, PERL, Ruby and Python) or outside the main routine/program (e.g. like in C++, C#, Java and VB/VBA). In the main routine a function named "compute" is called to provide a return value for a variable named b. Once the thread of execution moves to the "compute" function, the value from the global variable b is visible inside the function and is assigned to a local variable x. The content of variable x is then used inside a mathematical expression and the result is returned to the caller. Once the returned value is assigned to variable b, the content of the variable and that of the constant is then printed into the output for inspection. In the C++ computer language, one can see a comment declaring the constant and the global variable between the two functions. For testing, the activation of those declarations will result in an error because in C++ or VB, constants and global variables are written at the beginning of the program because the compiler needs to know the context before execution. In PHP and Python, global variables have visibility inside a function only if they have a special declaration (ie. Global $name_of_variable;). Also notice that in Ruby, global variables are denoted using the dollar sign in front of the name of the variable (ex. $b). Note that the source code is in context and works with copy/paste.
//These JavaScript examples are written for the Rhino JavaScript engine. To use this particular Javascript example in browsers, please put the source between the <script></script> tags, and replace any "print" keyword with the "alert" keyword.

const a = 3.1415; // constant
var b = 11;       // global variable

b = compute(); 
print(b + "\n" + a);

function compute(){
    let x = b;
    return x + x / x - x * x;
}
