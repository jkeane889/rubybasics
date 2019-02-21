def gold_room
  puts "This room is full of gold.  How much do you take?"

  print "> "
  choice = $stdin.gets.chomp
  how_much = []

  # Here we are creating an if-else statement with a nested while loop.  Above, also created an empty array called "How_much."
  # The conditional will return TRUE if the user input contains a Regex (regular expression) that matches a number between 0 and 9.
  # If the conditional returns false, the while loop is then initiated and will run until choice equals a value between 0 and 9.
  # If the conditional does not contain a value, it will call the gold_room function and have the user return to entering
  # a value for choice.

  if choice =~ /[0-9]/
    choice = choice.to_i
  else
    while !(choice =~ /[0-9]/)
      puts "Learn to type a number"
      gold_room
    end
  end

  # Here I push the new integer "choice" into our how_much array
  how_much << choice

  # next, another if statement compares the first value in the array, our choice integer, to the value 50.  
  if how_much[0] < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you and then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear moved from the door.  You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pised off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start
