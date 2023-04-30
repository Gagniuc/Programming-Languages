//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 9.2b. It shows how a distribution can be calculated for a range of integers. This example uses a mathematical expression shown across the chapters. The mathematical expression takes an input value and, as expected, provides an output value. In this particular example, an implementation takes a range of integers and returns a corresponding range of values calculated using the mathematical expression. For each computer language there are two examples. One example that uses a string variable to store the results, and another example that uses an array variable to store the results. The two examples per computer language show the malleability of code, that points out the possibility of multiple solutions to one problem. Note that the source code is in context and works with copy/paste.

public class Main
{
    public static void main(String[] args) {

        int[] a = distribution(3, 21);
        String l = "";
        
        for(int i = 0; i < a.length; i++){
            l += a[i] + "\n";
        }

        System.out.println(l);
    }


    static int[] distribution(
                       int start, int stop){
        
        int[] b = new int[stop - start];
        
        for (int i = start; i < stop; i++) {
            b[i - start] = compute(i);
        }
        
        return b;
    }
    

    static int compute(int x){
        return x + x / x - x * x;
    }
}
