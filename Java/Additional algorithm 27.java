//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 27. It demonstrates the use of a single for-loop for two-dimensional arrays. It shows the traversal of a two-dimensional array by one for-loop structure. A 2D-array variable (A) is declared with mixed datatypes as before, namely with string literals and number literals. A string variable t is initially set to empty. A variable v is set to zero and it represents the main counter of the for-loop. Another two variables (ie. i and j) are initialized with value zero and are the main coordinates for element identification. Each dimension of array A is stored in variables n and m, namely the number of rows in n and the number of columns in m. The upper limit of the for-loop is calculated based on the two known dimensions n and m. Thus, m times n establishes the upper limit of the for-loop. Here, the value of the counter v from the for-loop is used to calculate the i and j values that are used as an index to traverse the array variable A. The value of variable j is computed as the v % m and the result of this expression indicates the reminder (ex. 5 mod 3 is 2). The secret to this implementation is a condition that increments a variable i (rows) each time j (columns) equals zero. Thus, in this manner this approach provides the i and j values that a nested for-loop provides. At each iteration, the value from an element is added to the content of variable t. Once the end of the for-loop is reached, the value collected in variable t is printed in the output for inspection. The end result is the enumeration of each value in the output, in a linear manner. Note that the source code is in context and works with copy/paste.

public class Main
{
    public static void main(String[] args) {

        String[][] A = new String[][] {
                                    {"a","b"},
                                    {"c","d"},
                                    {"e","f"},
                                    {"g","h"}
                                    };
    
        String t = "";
        
        int n = A.length;
        int m = A[0].length;
    
        int i = 0;
        int j = 0;
    
        for (int v = 0; v < n*m; v++) {
            
            j = v % m;
            if(v!=0 && j == 0){i++;}
            
            t += v + " A["+i+","+j+"]=";
            t += A[i][j] + "\n";
        }
        
        System.out.println(t);
    }
}
