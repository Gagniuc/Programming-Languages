#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 8.1. It shows the use of functions that take simple arguments. An integer literal is assigned to a variable a. Variable a is then used as an argument for a function called "compute". Function "compute" takes the argument and uses its value in a mathematical expression. The returned value of function "compute" is then assigned to a variable b, which is then printed into the output for inspection. Note that the source code is in context and works with copy/paste.

def compute(x)
    return x + x / x - x * x
end

a = 10
b = compute(a)
puts b
