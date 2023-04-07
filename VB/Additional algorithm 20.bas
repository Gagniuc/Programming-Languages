Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 20. Demonstrates the implementation of conditional statements. Three variables a, b and c are declared and assigned to different values. A condition triggers a statement to increment the value of variable c, only if the value of variable a is less than the value of variable b, otherwise a decrement is applied to the value of c. Note that the source code is in context and works with copy/paste.

Sub main()

    Dim a, b, c As Integer
    
    a = 1
    b = 2
    c = 3
    
    If a < b Then c = c + 1 Else c = c - 1
    
    Debug.Print "c=" & c

End Sub

    
