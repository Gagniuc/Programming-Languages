//Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
//Additional algorithm 5.1. The first line of each computer language in the above list, shows an extraction of an ASCII character on the basis of an ASCII code. The second line shows the extraction of the ASCII code based on a given ASCII character. The output for any of the above statements is "Code 65 is the:'A' letter" and "Letter A has the code:'65'". Note that the source code is in context and works with copy/paste.
//These JavaScript examples are written for the Rhino JavaScript engine. To use this particular Javascript example in browsers, please put the source between the <script></script> tags, and replace any "print" keyword with the "alert" keyword.

print ("Code 65 is the:'" + String.fromCharCode(65) + "' letter");
print ("Letter A has the code:'" + 'A'.charCodeAt(0) + "'");
