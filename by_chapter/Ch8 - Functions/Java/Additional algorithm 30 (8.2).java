//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 8.2. It shows the use of functions by considering complex arguments. Such complex arguments can be strings, array variables, or complex objects. In this specific case, a string and an array variable are used as arguments to a function called "compute". An array variable containing five elements is declared using string literals. Then a string variable t is declared and set to empty. The two variables are passed to the "compute" function. Inside the "compute" function, a for-loop traverses each element of the array a, and it adds the value from it to the accumulator variable t. At the end of the for-loop, the "compute" function returns the value of t, which is assigned to a string variable b, that is further printed onto the output for inspection. Note that the source code is in context and works with copy/paste.

public class Main
{
    public static void main(String[] args) {

        String[] a = {"a", "b", "c", "d", "e"};
        String t = "";
        String b = compute(t, a);
        
        System.out.println(b);
    }
    
  static String compute(String t, String [] a)
    {
        for (int i = 0; i < a.length; i++) {
            t += "\n a[" + i + "]=" + a[i];
        }
        
        return t;
    }
}
