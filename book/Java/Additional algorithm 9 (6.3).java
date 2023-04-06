//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 6.3. It shows explicit and implicit declarations of variables as well as examples of expressions and their evaluations for all computer languages used here. It mainly shows the connection between operators and data types. Note that the source code is in context and works with copy/paste.

public class Main
{
    public static void main(String[] args) {
        
        int x = 12;
        int y = 15;
        String color = "green";
        String xname = "Paul";
        boolean logic = true;
        
        System.out.println(logic);
        System.out.println(x + y);
        System.out.println(color + x);
        System.out.println(x + xname);
        System.out.println(x + y + color);
        System.out.println(color + x + y);
        System.out.println(x + x / x - x * x);
        
    }
}
