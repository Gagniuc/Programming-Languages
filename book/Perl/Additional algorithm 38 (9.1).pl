#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 9.1. It shows different experiments on recursive functions. A total of six examples are shown, in which: 1) A recursive function repeats one (or a group) of characters n times and returns a string of length n. 2) A recursive function sums integers from zero to n. 3) A recursive function computes the factorial for an integer n. 4) A function generated a sequence of numbers based on various rules. 5) A recursive function provides the Fibonacci sequence. 6) A recursive function sums all the integers stored in the elements of an array variable. Note that the source code is in context and works with copy/paste.

my $a = x("*", "", 10);
print "Repeat:\n[" . $a . "]\n";

# sum from 0 to n
my $b = sum(23);
print "Sum:[" . $b . "]\n";

# factorial from 0 to n
my $c = factorial(10);
print "Factorial:\n[" . $c . "]\n";

# just a sequence
my @d = sequence(5, [], 0, 5);
print "A sequence:\n[" . join(",", @d) . "]\n";

# fibonacci
my @e = fibonacci(3, (1,2,3), 5);
print "Fibonacci:\n[" . join(",", @e) . "]\n";

# sum all from array
@q = (1, 3, 3, 4, 5, 9);
$f = sum_array($#q+1, $q, 0);
print "Sum array:[" . $f . "]";


# repeat string n times
sub x{
    
    my ($c, $s, $n) = @_;
    
    $s .= $c;
    
    if(length($s) >= $n){
        return $s;
    } else {
        return x($c, $s, $n);
    }
}


# sum from 0 to n
sub sum($n){
    my ($n) = @_;
    if ($n <= 1) {return $n;}
    return $n + sum($n - 1);
}


# factorial from 0 to n
sub factorial($n){
    my ($n) = @_;
    if ($n <= 1) {
        return $n;
    } else {
        return factorial($n - 1) * $n;
    }
}


# just a sequence
sub sequence{

    my ($n, $m, $i, $t) = @_;

    $m[$i] = $n;
    $i++;
    
    if ($i >= $t) {
        return @m;
    } else {
        return sequence(
               ($n-1)+($n-2), $m, $i, $t
                       );
    }
}


# fibonacci
sub fibonacci{
    
    my ($n, @m, $t) = @_;

    $n++;
    $m[$n] = $m[$n-1] + $m[$n-2];

    if ($n >= $t) {
        return @m;
    } else {
        return fibonacci($n, @m, $t);
    }
}


# sum all from array
sub sum_array{
    my ($n, $q, $r) = @_;
    
    $r += $q[$n];
    
    if ($n <= 0) {
        return $r;
    } else {
        return sum_array($n - 1, $q, $r);
    }
}
