Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 5.3b. It demonstrates multiple statements made on one line, and a line continuation for long statements. The statements shown here are very short, but the point of the exercise remains valid. Note that the source code is out of context and is intended for explanation of the method.

Sub main()

    ' Acceptable:
    
    a = "this is ": b = a & "Visual Basic 6.0" & vbCrLf & "output": Debug.Print b

End Sub

