Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 14. It shows the statements by which an array variable A is declared and the statements by which literal values are subsequently inserted into the elements of the array variable. It should be noted that some computer languages such as Javascript, PHP, PERL or Ruby allow the declaration of an empty array variable, after which the values can be inserted into newly declared elements. On the other hand, in other computer languages such as C#, Java, VB and Python, the number of elements in the array variable must be declared before the assignment of values. Note that the source code is in context and works with copy/paste.

Sub main()

    Dim A(0 To 3) As String
    
    A(0) = "a"
    A(1) = "b"
    A(2) = "c"
    
    MsgBox A(0) & A(1) & A(2)

End Sub

