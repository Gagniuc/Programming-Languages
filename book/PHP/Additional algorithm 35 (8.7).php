<?php

	//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
	//Additional algorithm 8.7. It shows the meaning of pure and impure functions. A function named "pure" receives an argument x and returns a value that is the result of the evaluation of a mathematical expression. This function is pure because it does not change anything outside the function. On the other hand, a function called "impure" receives the same argument x that is used in the same mathematical expression as in the "pure" function. However, the "impure" function, modifies the value of a global variable a. This modification made outside the function makes the function impure. Notice that both functions return the same result in the initial call. However, in the third call the returned value differs, as the global variable a that is modified by the "impure" function is in fact the argument for the next calls. Note that the source code is in context and works with copy/paste.

    $a = 10;
    
    $b = pure($a);
    echo "$b & $a\n";
    
    $c = inpure($a);
    echo "$c & $a\n";
    
    $d = inpure($a);
    echo "$d & $a";
    
    function pure($x){
        return $x + $x / $x - $x * $x;
    }
    
    function inpure($x){
        global $a;
        $a = 11;
        return $x + $x / $x - $x * $x;
    }

?>
