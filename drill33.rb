# Here we generate a random number in Ruby
x = rand (100)

# Next, we define our function, parking space counter
def parking_space_Counter(car)

  # Here we create an array which represents the parking garage
  parking_garage = []
  # Here we define the hypothetical amount of parking spaces available in our parking garage, "i"
  i = 100

  # Our while statement will run so long as our parking garage space is greater than zero
  while i >= 0
    # First, we will test to see if "i", the number of spaces available in our parking garage, is greater than 0.  If
    #  it is, we will publish to the console the amount of spots available.
    if i > 0
      puts "There are currently #{i} parking spots available."
    end

    # We not push the current value of "i" into our parking_garage array
    parking_garage.push(i)

    # Here we now decrease the value of "i" to represent the decrease in parking spaces based on the amount of cars that just entered.
    i = i - car
  end

  # After exiting the for loop, in that "i" is no longer greater than zero (zero or negative parking spaces), we publish
  # to the console that the parking lot is now full of cars.
  if i <= 0
    puts "Sorry, parking lot is full"
  end

end

parking_space_Counter(x)
