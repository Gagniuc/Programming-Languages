Attribute VB_Name = "Module1"
'Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
'Additional algorithm 6.13c. It shows the way in which multidimensional array variables can be declared. An interesting difference can be observed between two groups of computer languages. A group involving Javascript, PHP, PERL, Ruby or Python and another group involving classic computer languages, namely C#, Java, VB. The first group (ie. Javascript, PHP, PERL, Ruby or Python) uses largely the same type of declaration for several dimensions. The Javascript example shows how to declare two-dimensional and three-dimensional array variables, where the pattern can be followed for any higher dimensions (ie. 4D, 5D, 6D, and so on). In PHP, PERL, Ruby or Python, the exemplification is only repeated for two dimensions and it assumes that for more than two dimensions the declarations can be made in the same way as in Javascript. The second group is more different, where Java, C# and VB are radically different in the way statements are made. Obviously, Java and C# have common syntax elements, but they differ a little _
'n the way the declarations for arrays are made. In VB, the number of dimensions and the number of elements in each dimension are initially declared. Only then these elements in their respective dimensions can receive values by assignment. VB is so radically different when compared to other computer languages, that array variables have a lower bound (read through the LBound function) and an upper bound (read through the UBound function), a property that can open paths in prototyping (especially in science). In the VB examples, each Debug.Print statement line corresponds to a row in the output. Note that the source code is in context and works with copy/paste.

Sub main()

    Dim n, m As Integer

    n = 2
    m = 1

    Dim A() As Variant
    ReDim A(1 To n, 1 To m)

    Debug.Print ("Before--")
    Debug.Print LBound(A, 1)
    Debug.Print UBound(A, 1)
    Debug.Print ("-------")
    Debug.Print LBound(A, 2)
    Debug.Print UBound(A, 2)
    Debug.Print ("-------")

    n = n + 1
    m = m + 1

    ReDim Preserve A(1 To m, 1 To n)

    Debug.Print ("After--")
    Debug.Print LBound(A, 1)
    Debug.Print UBound(A, 1)
    Debug.Print ("-------")
    Debug.Print LBound(A, 2)
    Debug.Print UBound(A, 2)
    Debug.Print ("-------")

End Sub
