<?php

	//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
    //Additional algorithm 30. It shows the use of functions by considering complex arguments. Such complex arguments can be strings, array variables, or complex objects. In this specific case, a string and an array variable are used as arguments to a function called "compute". An array variable containing five elements is declared using string literals. Then a string variable t is declared and set to empty. The two variables are passed to the "compute" function. Inside the "compute" function, a for-loop traverses each element of the array a, and it adds the value from it to the accumulator variable t. At the end of the for-loop, the "compute" function returns the value of t, which is assigned to a string variable b, that is further printed onto the output for inspection. Note that the source code is in context and works with copy/paste.

    $a = ["a", "b", "c", "d", "e"];
    $t = "";
    $b = compute($t, $a);
    echo $b;
    
    function compute($t, $a)
    {
        for ($i = 0; $i < count($a); $i++) {
            $t .= "\n a[" . $i . "]=" . $a[$i];
        }
        return $t;
    }

?>