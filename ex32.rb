the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages

for number in the_count
    puts "This is count #{number}"
end

#same as above, but in a more Ruby style
# this and the next one are the preferred
# way Ruby for-loops are written

# This is the rewritten code using the Ruby style for loop versus traditional for loop
the_count.each do |i|
    puts "A number from the count: #{i}"
end

fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}"}

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..10).each do |i|
    #pushes the i variable on the *end* of the list
    elements << i
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}"}
