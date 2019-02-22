# create a mapping of state to abbreviation

states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

regions = {
  'San Francisco' => 'Bay Area',
  'Detroit' => 'Great Lakes',
  'Jacksonville' => 'Duval'
}

zipcodes = {
  'Bay Area' => ['94016', '94015','94110','94119'],
  'Great Lakes' => ['60044', '60064', '60088'],
  'Duval' => ['32034', '32201', '32205']
}


# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreivation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# listing regions of cities

puts '-' * 10
puts "California has: #{regions[cities[states['California']]]}"
puts "Florida has: #{regions[cities[states['Florida']]]}"

# listing zip codes of cities
puts '-' * 10
puts "The zipcodes for the Bay Area area are: #{zipcodes[regions[cities[states['California']]]]}"
puts "The zipcodes for the Great Lakes area are: #{zipcodes[regions[cities[states['Michigan']]]]}"
puts "The zipcodes for the Duval area are: #{zipcodes[regions[cities[states['Florda']]]]}"

# puts every state abbreivation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas"
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state 'TX' is: #{city}"
