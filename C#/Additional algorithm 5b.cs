//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 5. It demonstrates multiple statements made on one line, and a line continuation for long statements. The statements shown here are very short, but the point of the exercise remains valid. Note that the source code is out of context and is intended for explanation of the method.

using System;
class HelloWorld {
  static void Main() {

	// Acceptable:

	String a = "this is "; String b = a + "C#\n" + "output"; Console.WriteLine(b);
  }
}
