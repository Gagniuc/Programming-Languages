//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 4.1. Examples of assignments are shown for multiple computer languages. An important observation is that VB refers to Visual Basic 6.0 (VB6) and VBA syntax, namely the last version of Visual Basic. Thus VB6 lacks aggregate assignment as this style is a relatively new addition to computer languages. VB6 can explicitly declare multiple variables for a certain data type (Dim a, b, c As Integer), however, it lacks the posibility for multiple assignment. Note that the source code is out of context and is intended for explanation of the method.

public class Main
{
	public static void main(String[] args) {
	    
	    int a, b, c;

        a = 1;	
    
        a += 1;	

        a = b = c = 1;

		System.out.println(a + b + c);
	}
}
