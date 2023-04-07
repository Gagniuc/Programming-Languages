#Paul A. Gagniuc. An Introduction to Programming Languages: Simultaneous Learning in Multiple Coding Environments. Synthesis Lectures on Computer Science. Springer International Publishing, 2023, pp. 1-280.
#Additional algorithm 6.3. It shows explicit and implicit declarations of variables as well as examples of expressions and their evaluations for all computer languages used here. It mainly shows the connection between operators and data types. Note that the source code is in context and works with copy/paste.

x = 12
y = 15
color = "green"
xname = "Paul"
logic = true

puts logic
puts (x + y)
puts (color + x.to_s)
puts (x.to_s + xname)
puts (x + y).to_s + color
puts color + (x + y).to_s
puts (x + x / x - x * x)
