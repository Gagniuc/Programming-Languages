//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 38. It shows different experiments on recursive functions. A total of six examples are shown, in which: 1) A recursive function repeats one (or a group) of characters n times and returns a string of length n. 2) A recursive function sums integers from zero to n. 3) A recursive function computes the factorial for an integer n. 4) A function generated a sequence of numbers based on various rules. 5) A recursive function provides the Fibonacci sequence. 6) A recursive function sums all the integers stored in the elements of an array variable. Note that the source code is in context and works with copy/paste.
//These JavaScript examples are written for the Rhino JavaScript engine. To use this particular Javascript example in browsers, please put the source between the <script></script> tags, and replace any "print" keyword with the "alert" keyword.

a = x("*", "", 10);
print("Repeat:\n[" + a + "]");

b = sum(23);
print("Sum:[" + b + "]");

c = factorial(10);
print("Factorial:\n[" + c + "]");

d = sequence(5, [], 0, 5);
print("A sequence:\n[" + d + "]");

e = fibonacci(2, [0, 1, 2], 5);
print("Fibonacci:\n[" + e + "]");

q = [1, 3, 3, 4, 5, 9];
f = sum_array(q.length - 1, q, 0);
print ("Sum array:[" + f + "]");


// repeat string n times
function x(c, s, n){
    
    s += c;
    
    if(s.length>=n){
        return s;
    } else {
        return x(c, s, n);
    }
}

// sum from 0 to n
function sum(n){
    if (n <= 1) {return n;}
    return n + sum(n - 1);
}


// factorial from 0 to n
function factorial(n){
    if (n <= 1) {
        return n;
    } else {
        return factorial(n - 1) * n;
    }
}


// just a sequence
function sequence(n, m, i, t){

    m[i] = n;
    i++;
    
    if (i >= t) {
        return m;
    } else {
        return sequence((n-1)+(n-2), m, i, t);
    }
}

// fibonacci
function fibonacci(n, m, t){
    
    n++;
    m[n] = m[n-1] + m[n-2];
    
    if (n >= t) {
        return m;
    } else {
        return fibonacci(n, m, t);
    }
}

// sum all from array
function sum_array(n, q, r){
    
    r += q[n];

    if (n <= 0) {
        return r;
    } else {
        return sum_array(n - 1, q, r);
    }
}
