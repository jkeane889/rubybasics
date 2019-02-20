puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

#the <<END is a "heredoc". See the Student Questions.
# END represents a long string that will be passed into the variable "poem."  You then finish the long string with the
# same large caps word that it began with.
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

#Here we are printing 15 dashes to the console first, then the long "poem" string, and then another
# line of dashes.
puts "-------------"
puts poem
puts "-------------"

# Here we are performing calculations and then defining five to be the result of those calculations.  We then
# print the result to the console.
five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

#Here we create a function called secret_formula.  The variable that gets passed into the function is "started."
# Inside the function, we then use the value of started to calculate three new variables created within the
# function called, jelly_beans, jars, and crates.  The function that returns the values for each of those variables.
def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

#Here we define our start_point as 10,000
start_point = 10000

#Here we call our secret_formula function, and 10,000 (start_point) is passed in as our variable (represents "started"
# in our original function).  Upon completion of the calculations, the returned values now represent beans, jars, and
# crates, three new values outside of our secret_formula function.
beans, jars, crates = secret_formula(start_point)

# We now publish the values of these three new variables to the console.
puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

# Here we redefine the value of start_point, and divide the original (above) by 10.
start_point = start_point / 10
puts "We can also do that this way."

# Next, call our secret_formula function on the same line.  This is known as "sprintf" syntax in Ruby
# This is another way to interpolate variables.  "%s" stands for string, which will print a string to
# the console, which will also correspond with the first value that is returned through our secret_formula
# function.  The "%d" represents, will put the value through Integer, and print an integer value to the
# console.  In our line it will represent the other two values return through our secret_formula function.
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)
