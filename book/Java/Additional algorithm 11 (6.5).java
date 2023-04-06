//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 6.5. It shows how constants are declared in different computer languages. Moreover, it shows the difference between constant declaration (second column) and variable declaration (third column). Some computer languages use special keywords and data type declarations, while other computer languages do not. Notice how in certain computer languages where there are no special keywords for defining constants, the difference between constant and variable is made by convention; namely a variable written with an uppercase letter means a constant and a variable written with a lowercase letter means a simple variable whose content can be changed at will. Note that the source code is out of context and is intended for explanation of the method.

public class Main
{
	public static void main(String[] args) 
	{
        final double X = 3.141592653;
        double x = 3.141592653589793;
        
        System.out.println(x + X);
	}
}
