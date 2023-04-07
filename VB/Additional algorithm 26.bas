Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 26. It demonstrates the use of nested for-loops. It shows the traversal of a two-dimensional array by a nested for-loop structure. A 2D-array variable (A) is declared with mixed datatypes, namely with string literals and number literals. A string variable t is initially set to empty. Another two variables (ie. i and j) are initialized with value zero and are the main counters of nested for-loops. The upper limit of each for-loop is established by the two dimensions, namely the number of rows and columns from matrix A. The two for-loops traverse the elements of array A by using the counters i and j as an index. At each iteration, the value from an element is added to the content of variable t. Once the end of the nested for-loops is reached, the value collected in variable t is printed in the output for inspection. The end result is the enumeration of each value in the output, in a linear manner. Note that the source code is in context and works with copy/paste.

Sub main()

    Dim A(0 To 1, 0 To 2) As String
    Dim i As Integer
    Dim t As String

    A(0, 0) = "a"
    A(0, 1) = "b"
    A(0, 2) = "c"
    A(1, 0) = "d"
    A(1, 1) = "e"
    A(1, 2) = "f"
    
    For i = LBound(A, 1) To UBound(A, 1)
        For j = LBound(A, 2) To UBound(A, 2)
            t = t & "A(" & i & "," & j & ")="
            t = t & A(i, j) & vbCrLf
        Next j
    Next i
    
    Debug.Print (t)

End Sub
