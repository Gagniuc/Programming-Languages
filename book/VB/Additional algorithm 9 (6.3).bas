Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 9. It shows explicit and implicit declarations of variables as well as examples of expressions and their evaluations for all computer languages used here. It mainly shows the connection between operators and data types. Note that the source code is in context and works with copy/paste.

Sub main()

    Dim x As Integer
    Dim y As Integer
    Dim color As String
    Dim name As String
    Dim logic As Boolean
    
    x = 12
    y = 15
    color = "green"
    xname = "Paul"
    logic = True

    Debug.Print (logic)
    Debug.Print (x + y)
    Debug.Print (color & x)
    Debug.Print (x & xname)
    Debug.Print (x + y & color)
    Debug.Print (color & x + y)
    Debug.Print (x + x / x - x * x)

End Sub
