print "How old are you? "
age = $stdin.gets.chomp
print "How tall are you? "
height = $stdin.gets.chomp.to_f
print "How much do you weigh? " 
weight = $stdin.gets.chomp.to_f

puts "So, you're #{age} old, #{height} tall and weigh #{weight} pounds."
