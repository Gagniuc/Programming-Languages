#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 8.3. It shows the principle of nested function calls in which the return value of the most inner function becomes the argument for the most immediate outer function call, and so on. An integer literal is assigned to variable a. Then, the final return value of a group of nested function calls is assigned to a variable b, which in turn is printed to the output for inspection. Initially, the value stored in variable b is a negative value (ie -756029). Thus, for demonstration purposes, the minus sign is inserted in front of variable b in order to change the sign of the stored integer value (ie. b = -b). Note that the source code is in context and works with copy/paste.

my $a = 3;
my $b = c(c(c(c($a))));
$b = -$b;

print $b;

sub c{
    my ($x) = @_; 
    return $x + $x / $x - $x * $x;
}
