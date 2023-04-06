Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 38. It shows different experiments on recursive functions. A total of six examples are shown, in which: 1) A recursive function repeats one (or a group) of characters n times and returns a string of length n. 2) A recursive function sums integers from zero to n. 3) A recursive function computes the factorial for an integer n. 4) A function generated a sequence of numbers based on various rules. 5) A recursive function provides the Fibonacci sequence. 6) A recursive function sums all the integers stored in the elements of an array variable. Note that the source code is in context and works with copy/paste.

Sub main()
    
    ' repeat string n times
    a = x("*", "", 10)
    Debug.Print ("Repeat:" & _
    vbCrLf & "[" & a & "]")
    
    ' sum from 0 to n
    b = sum(23)
    Debug.Print ("Sum:[" & b & "]")
    
    ' factorial from 0 to n
    c = factorial(10)
    Debug.Print ("Factorial:[" & _
    vbCrLf & "[" & c & "]")
    
    ' just a sequence
    Dim m(0 To 4) As Integer
    Dim d() As Integer
    d = sequence(5, m, 0, 5)
    For i = 0 To UBound(d)
        t = t & d(i) & ","
    Next i
    Debug.Print ("A sequence:[" & _
    vbCrLf & "[" & t & "]")
    
    ' fibonacci
    Dim e() As Integer
    Dim h(0 To 5) As Integer
    
    h(0) = 0
    h(1) = 1
    h(2) = 2
    
    t = Empty
    e = fibonacci(2, h, 5)
    For i = 0 To UBound(e)
        t = t & e(i) & ","
    Next i
    Debug.Print ("Fibonacci:[" & _
    vbCrLf & "[" & t & "]")
    
    ' sum all from array
    q = Array(1, 3, 3, 4, 5, 9)
    f = sum_array(UBound(q), q, 0)
    Debug.Print ("Sum array:[" & f & "]")

End Sub


' repeat string n times
Function x(c, s, n)

    s = s + c
    
    If (Len(s) >= n) Then
        x = s
    Else
        x = x(c, s, n)
    End If

End Function
    

' sum from 0 to n
Function sum(n)
    If (n <= 1) Then
        sum = n
    Else
        sum = n + sum(n - 1)
    End If
End Function


' factorial from 0 to n
Function factorial(n)
    If (n <= 1) Then
        factorial = n
    Else
        factorial = factorial(n - 1) * n
    End If
End Function


' just a sequence
Function sequence(n, ByRef m, i, t)

    m(i) = n
    i = i + 1
    
    If (i >= t) Then
        sequence = m
    Else
        sequence = sequence( _
        (n - 1) + (n - 2), m, i, t)
    End If
    
End Function


' fibonacci
Function fibonacci(n, ByRef m, t)

    n = n + 1
    m(n) = m(n - 1) + m(n - 2)

    If (n >= t) Then
        fibonacci = m
    Else
        fibonacci = fibonacci(n, m, t)
    End If
    
End Function
    

' sum all from array
Function sum_array(n, q, r)

    r = r + q(n)

    If (n <= 0) Then
        sum_array = r
    Else
        sum_array = sum_array(n - 1, q, r)
    End If
    
End Function
