//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 8.9. This shows an example of using the built-in functions. In this specific case, it shows how to check for the presence of a string above another string. A string literal is assigned to variable "a" and a string literal representing the target is assigned to a variable "q". The number of characters found in a, is assigned to a variable b. Next, in a function chain all q encounters found in the string of a, are replaced with nothing. If the q string exists in variable a than the result is a shorter string than the original. Next in this function chain, the result is passed directly to the length function, which provides the total number of characters in the procesed string. This last result is then assigned to variable c. In a condition statement the value of c is compared with the value from a. If the two values are different, it means that q was present in the original string of a. Note that the replacement is made by using two methods: 1) the split function that uses q as a delimiter, provides an array wich in turn is converted into a normal string again, without any instances of q (this can be seen in Javascript and VB). 2) the replace function which is able to replace all instances of q found in a, with an empty string (eg it deletes q from a). Note that the source code is in context and works with copy/paste.

public class Main
{
    public static void main(String[] args) {

    String a = "*******%%**********%%******";
    String q = "%%";
    
    int b = a.length();
    int c = a.replace(q, "").length();

    if(c < b){
        System.out.println("a contains q");
    }

    }
}
