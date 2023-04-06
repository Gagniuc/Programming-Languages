#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 32. It shows how functions may use other functions in a chain of calls. Another important observation made here, is related to the position of functions relative to the main program. In some computer languages function must be declared before the main program, whereas in other computer languages the order of the functions or the position of the functions relative to main, is not important. This fact indicates how the source code is treated by the compiler. That is, in some computer languages, execution is immediate, regardless of whether the functions are loaded or not, while in other computer languages, execution begins once all the code is loaded. The example from above shows how two variables become the arguments of a function c1, which pass their values to other functions in a chain that ends in a function c5. This trip of the arguments shows different types of additions until the last level is reached, such as additions of values, either literals, returned values from other functions or values from new variables. Function c5 uses a for-loop to traverse the elements of the array variable in order to sum up the values in the accumulator variable t. Once the for-loop finishes the iterations, the value from variable t is returned to function c4, which adds some other value to the this response. In turn, function c4 returnes the value to function c3, until it reaches the path to function c1, which assigns the final response value to a variable b. Variable b in turn is printed into the output for inspection. Notice that, in the case of C++, variable t holds the total number of elements of array a, until the chain of calls reaches function c5. There, the content of variable t is assigned to a new variable (ie. l), and variable t is set to zero to take the role of an accumulator variable for calculating the sum. It should be noted that pointers can be used, namely, the argument "int a[]" can be written as a pointer, namely "*a", which will provide the same result because the number of elements in array a is calculated before any function is called. Note that the source code is in context and works with copy/paste.

my @a = (1, 2, 3, 4, 5);
my $t = 0;
my $b = c1($t, $a); 
print $b;

sub c1{
    my ($t, $a) = @_;
    return 5 + c2($t, $a);
}

sub c2{
    my ($t, $a) = @_;
    return c3($t, $a) + 5;
}

sub c3{
    my ($t, $a) = @_;
    my $s = 1;
    return $s + c4($t, $a);
}

sub c4{
    my ($t, $a) = @_;
    return c5($t, $a) + c5($t, $a);
}

sub c5{
    my ($t, $a) = @_;

    for ($i = 0; $i < scalar(@a); $i++) {
        $t += $a[$i];
    }
    return $t;
}
