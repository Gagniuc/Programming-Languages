#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 38. It shows different experiments on recursive functions. A total of six examples are shown, in which: 1) A recursive function repeats one (or a group) of characters n times and returns a string of length n. 2) A recursive function sums integers from zero to n. 3) A recursive function computes the factorial for an integer n. 4) A function generated a sequence of numbers based on various rules. 5) A recursive function provides the Fibonacci sequence. 6) A recursive function sums all the integers stored in the elements of an array variable. Note that the source code is in context and works with copy/paste.

# repeat string n times
def x(c, s, n):
    
    s += c
    
    if(len(s)>=n):
        return s
    else:
        return x(c, s, n)


# sum from 0 to n
def sum(n):
    if (n <= 1): return n
    return n + sum(n - 1)


# factorial from 0 to n
def factorial(n):
    if (n <= 1):
        return n
    else:
        return factorial(n - 1) * n


# just a sequence
def sequence(n, m, i, t):

    m[i] = n
    i = i + 1
    
    if (i >= t):
        return m
    else:
        return sequence((n-1)+(n-2), m, i, t)


# fibonacci
def fibonacci(n, m, t):
    
    n = n + 1
    m[n] = m[n-1] + m[n-2]
    
    if (n >= t):
        return m
    else:
        return fibonacci(n, m, t)


# sum all from array
def sum_array(n, q, r):
    
    r = r + q[n]
    
    if (n <= 0):
        return r
    else:
        return sum_array(n - 1, q, r)


# repeat string n times
a = x("*", "", 10)
print("Repeat:\n[" + a + "]")

# sum from 0 to n
b = sum(23)
print("Sum:[" + str(b) + "]")

# factorial from 0 to n
c = factorial(10)
print("Factorial:\n[" + str(c) + "]")

# just a sequence
d = sequence(5, [0]*5, 0, 5)
print("A sequence:\n" + str(d))

# fibonacci
t = [0]*6
t[1] = 1; t[2] = 2
e = fibonacci(2, t, 5)
print("Fibonacci:\n" + str(e))

# sum all from array
q = [1, 3, 3, 4, 5, 9]
f = sum_array(len(q) - 1, q, 0)
print("Sum array:[" + str(f) + "]")
