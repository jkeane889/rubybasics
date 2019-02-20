input_file = ARGV.first

#Here we are creating a function to read the input variable "f", which will be some kind of text file,
#in order to use the function "read" on it.  We are then outputting whatever we read to the console.
def print_all(f)
    puts f.read
end

#Here we are creating another function that takes an input variable "f," and uses the inherent seek
#function in order to find the first character in the file.
def rewind(f)
    f.seek(0)
end

#In this function, we are taking to parameters, "line_count" and "f", and passing them into the function.
#Next, we are printing the value of "line_count" to the console, and for "f", gets is asking the user to input
#something, and chomp is then removing the blank line that is automatically created by "gets" after the
#input.
def print_a_line(line_count, f)
    puts "#{line_count}, #{f.gets}"
end

#Here we are opening our input file from our ARGV value.
current_file = open(input_file)

# Now we are telling the user what we are going to be doing with the file.
puts "First let's print the whole file:\n"

#Here we are calling our "print_all" function, which is going to read the file, and print it to the console.
print_all(current_file)

#We are now telling the user that we are going to be initiating our next function.
puts "Now let's rewind, kind of like a tape."

#Here we are calling our "rewind" function, which is using the inherent seek function to go to the
#first character in the printed "current_file"
rewind(current_file)

#Here we define a new variable, "current_line" and give it the value of 1.  We now pass our new "current_line"
#value into our "print_a_line" function, along with our updated "current_file." It now prints the value of the
#current_line (1) and the first line of the contents of the current file.
current_line = 1
print_a_line(current_line, current_file)

#increment the current_line by 1, current_line is now 2
current_line += 1
#call the print a line function, prints the value "2", which represents the second line in our file
print_a_line(current_line, current_file)

#increment the current_line by 1, current_line is now 3
current_line += 1
#call the print a line function, prints the value "3", which represents the third line in our file
print_a_line(current_line, current_file)
