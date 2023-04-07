//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 8.5. It shows how a recursive function call can be a replacement of a for-loop statement. Thus, a function called "for-loop" is capable of receiving three arguments. An argument a, which is the counter for the number of self-calls, another argument b, which indicates the upper limit of recursive calls (self-calls), and finally an argument r, which accumulates an integer literal (ie 5). ) at each iteration/recursion. Inside the function a condition checks if the value of a is higher or equal to the value of the limit, namely b. In cases that a is less than b, the recursion continues, whereas if a is higher or equal to b, the value of r is returned back to the original caller. Once the final return value arrives to the caller, it is immediately assigned to variable a in the main program, an then the content of the a variable is printed into the output for inspection. Note that the source code is in context and works with copy/paste.

public class Main
{
    // replacement for repeat loops
    static int for_loop(int a, int b, int r){
     
        a++;
        // do stuff from
        r += 5;
        // to here
            
        if(a>=b){
            return r;
        } else {
            return for_loop(a, b, r);
        }
    }
    
    public static void main(String[] args) {
        int a = for_loop(0, 7, 0);
        System.out.println(a);
    }
}
