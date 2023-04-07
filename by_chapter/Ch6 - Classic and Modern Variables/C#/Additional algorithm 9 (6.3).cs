//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 6.3. It shows explicit and implicit declarations of variables as well as examples of expressions and their evaluations for all computer languages used here. It mainly shows the connection between operators and data types. Note that the source code is in context and works with copy/paste.

using System;
class HelloWorld {
  static void Main() {
      
    int x = 12;
    int y = 15;
    string color = "green";
    string xname = "Paul";
    bool logic = true;

    Console.WriteLine(logic);
    Console.WriteLine(x + y);
    Console.WriteLine(color + x);
    Console.WriteLine(x + xname);
    Console.WriteLine(x + y + color);
    Console.WriteLine(color + x + y);
    Console.WriteLine(x + x / x - x * x);
  }
}
