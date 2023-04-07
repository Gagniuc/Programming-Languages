#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 6.12. It presents nested arrays in Javascript, Ruby and Python. Three array variables A, B and C are declared here, each with three literal values. To represent the notion of nested, three other array variables are declared, namely D, E and F, each with three elements that hold one of the arrays A, B or C. To provide yet another level in the nest, a last three-element array variable is declared (ie. G), in which each element takes one of the recently mentioned arrays (ie. D, E or F). Note that the source code is in context and works with copy/paste.

A = ["a", "b", "c"]
B = ["d", "e", "f"]
C = ["g", "h", "i"]

D = [A, B, C]
E = [B, C, A]
F = [C, B, A]

G = [D, E, F]

print (A[0])
print (D[0])
print (G[0])