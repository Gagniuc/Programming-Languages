//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 6.6. It shows two methods of declaring an empty array. For declaration purposes, computer languages use either square brackets or round brackets to indicate that the variable represents a group of "internal subvariables". On the second column is the array square parentheses type of declaration. On the third column is the array constructor type of declaration. Most computer languages that use the array constructor statement are usually object-oriented. But not all of them; for example Python does not have a special keyword of this kind, preferring the array square parentheses notation. Those declarations that explicitly write the data type for the array, can obviously take any data type. Here the example was given on a string data type for computer languages such as Java, C# and VB. Note that the source code is out of context and is intended for explanation of the method.

using System;
class HelloWorld {
    static void Main() {
        string[] A;
        //or:
        //string[] A = new string[0];
    }
}
