Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 36. It shows the difference between functions and procedures. A pure function named f takes an argument and returns a value based on a mathematical expression. A procedure named "p" that takes no arguments and gives no return values, is used to assign the result of a subtraction to a local variable x (ie. x = a - 11). Next, the result of a mathematical expression is assigned to a global variable b, after which the execution thread returns automatically to the caller. Notice that in PHP and Python, global variables have visibility inside a function only if a special declaration exists (ie. Global $name_of_variable;). Also, notice that VB has a special keyword for procedures. The distinction between functions and procedures is made by using the keyword "function" and the keyword "Sub", respectively. Moreover, in VB, a sub is not called by using the round parenthesis as "p()", but the name of the procedure is simply stated, like "p". 
'Single letter names for procedures can be confusing in case of VB, and procedure names with more than two characters are adviseable. Note that the source code is in context and works with copy/paste.

Dim a, b As Integer

Sub main()
    a = 16
    b = f(a)
    Debug.Print b
    p
    Debug.Print b
End Sub

Function f(x)
    f = x + x / x - x * x
End Function

Sub p()
    x = a - 11
    b = x + x / x - x * x
End Sub

