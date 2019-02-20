#Here we define a new function "add", which takes a and b as values (presumed integer values).  The function
# then prints to the console adding the value a and b, and then ends up returning the sum of a + b
def add(a, b)
    puts "ADDING #{a} + #{b}"
    return a + b
end

#Our subtract function takes to arguments, a and b, and then prints to the console that we are subtracting
# both a and b, and then returns the difference.
def subtract(a, b)
    puts "SUBTRACTING #{a} - #{b}"
    return a - b
end

#Our multiply function takes two inputs, a and b, and then prints to the console that we are multiplying both of
# these values together.  We then return to the console the product of multiplying a and b.
def multiply(a, b)
    puts "MULTIPLYING #{a} * #{b}"
    return a * b
end

#Our divide function, takes to arguments, a and b, and then prints to the console that we are dividing a by b.
# We then return to the console the quotient of a divided by b.
def divide(a, b)
    puts "DIVIDING #{a} / #{b}"
    return a / b
end

#Here we are creating a value for age, by using our add function to add both 30 and 5 together.
age = add(30, 5)

#Here we are taking our subtract function and passing 78 and 4 into it to return the value for our new variable, height.
height = subtract(78, 4)

#Next we are using our multiply function to take 90 and 2 and multiply them together in order to create a value for
# our weight variable
weight = multiply(90, 2)

#Here we take our divide function and divide 100 by 2, and assign the returned value to our new variable iq.
iq = divide(100, 2)

#Here we are printing to the console the values for all of these new variables.
puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

#A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

#Here we are taking the value for our new IQ variable (50 in this case), and the value 2, and passing it into
# our divide function first.  This returns the value, 25.  We then have our multiply function, which multiplies our Weight
# value (180) by 25.  This becomes 4,500, which then passes into our subtract function, which takes height, 74, and,
# subtracts 4,500 from it.  Finally, our add function, takes our age, and adds it to our new value (35 + -4,426)
what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes #{what}. Can you do it by hand?"
