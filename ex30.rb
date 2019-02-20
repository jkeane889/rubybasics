people = 30
cars = 40
trucks = 15

# This function is comparing the value of cars against people.  If the value of this boolean comparison is TRUE,
# this will perform whatever is denoted inside of this function.
if cars > people
    #With original variable quanities, will print this to the console.
    puts "We should take cars."

# Stating that if the first argument isn't true, then do a boolean comparison to see if cars is less than people.
# If this is TRUE, then print what is in the function.
elsif cars < people
    puts "We should not take the cars."

# This last function is noting that if neither of the above comparisons are TRUE, then by default, run whatever is left
# inside of this function.
else
    puts "We can't decide."
end

if trucks > cars
    puts "That's too many trucks."
elsif trucks < cars
    puts "Maybe we could take the trucks."
else
    puts "We still can't decide."
end

if people > trucks
    puts "Alright, let's just take the trucks."
else
    puts "Fine, let's stay home then."
end
