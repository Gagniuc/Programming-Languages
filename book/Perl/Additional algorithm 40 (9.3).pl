#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 40. It shows the implementation of the Spectral Forecast equation on two signals. Two signals are represented by a sequence of numbers each. This sequence of numbers is stored as a string value in two variables A and B. These two values are then decoded into individual numbers inside the elements of the array variables (tA and tB). The maximum value found over the elements of the two array variables is calculated and stored before switching to the computation of Spectral Forecast. The array variables tA and tB are then used inside a for-loop to calculate a third signal M using the Spectral Forecast equation for a predefined index d. The index d determines how similar the third signal is to signal A or signal B . The method shown here allows for a useful protocol to manage and process numeric data stored as simple text, a case that is often encountered in science and engineering. Note that in the case of C++ some new built-in functions can be applied to a value inside a variable v, such as: the substr function that cuts a certain portion of a string, or the strtof(v) which converts a string to float. Other functions of interest not used here are: the strtod(c) function that converts a string to a double, or the v.c_str() method that converts a numeric value to a string. Also, in C++ the example uses vectors, and the number of components is given by the size() method. Again, the source code is in context and works with copy/paste.

# Spectral forecast for signals in Perl

my $A = '10.3,23.4,44.8,63.2,44.1,35.1,46.5,62.6,50.4';
my $B = '18.8,43.1,52.2,45.5,46.8,46.6,67.9,66.3,70.4';
my $M = "";

my $d = 33;
my $v = 0;

my @tA = split(',', $A);
my @tB = split(',', $B);

use List::Util qw(min max);
my $maxA = max @tA;
my $maxB = max @tB;
my $maxAB = ($maxA, $maxB)[$maxA < $maxB];

for(my $i = 0; $i <= $#tA; $i++){
    $v = (($d/$maxA)*$tA[$i])+((($maxAB-$d)/$maxB)*$tB[$i]);
    $M .= sprintf("%.2f", $v);
    if($i < $#tA){$M .= ',';}
}

print($M);