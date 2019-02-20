people = 20
cats = 30
dogs = 15

# TRUE statement.
if people < cats
    puts "Too many cats! The world is doomed."
end

#FALSE statement.
if people > cats
    puts "Not many cats!  The world is saved."
end

#FALSE statement.
if people < dogs
    puts "The world is drooled on."
end

#TRUE statement.
if people > dogs
    puts "The world is dry!"
end

#Increased value of dogs by 5 (5 + 15) = 20
dogs += 5

#TRUE statement - the count of both dogs and people are equal.
if people >= dogs
    puts "People are greater than or equal to dogs."
end

#TRUE statement - the count of both dogs and people are equal.
if people <= dogs
    puts "People are less than or equal to dogs."
end

#TRUE statement - they are equal.
if people == dogs
    puts "People are dogs."
end
