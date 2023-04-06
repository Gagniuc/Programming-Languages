#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 6.3. It shows explicit and implicit declarations of variables as well as examples of expressions and their evaluations for all computer languages used here. It mainly shows the connection between operators and data types. Note that the source code is in context and works with copy/paste.

my $x = 12;
my $y = 15;
my $color = "green";
my $xname = "Paul";
my $logic = true;

print ($logic);
print ($x + $y);
print ($color . $x);
print ($x . $xname);
print ($x + $y . $color);
print ($color . $x + $y);
print ($x + $x / $x - $x * $x);
