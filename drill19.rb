def bmr(age, weight, height, gender)
    bmr = 0
    kg_multiplier = 0.453592
    cm_multiplier = 2.54
    weight_kg = weight * kg_multiplier
    height_cm = height * cm_multiplier
    if (gender == "Male")
        men_bmr = (10 * weight_kg) + (6.25 * height_cm) - (5 * age) + 5
        new_men_bmr = men_bmr + bmr
        puts "This is your estimated basal metabolic rate: #{new_men_bmr}"
    elsif (gender == "Female")
        women_bmr = (10 * weight_kg) + (6.25 * height_cm) - (5 * age) - 161
        new_women_bmr = women_bmr + bmr
        puts "This is your estimated basal metabolic rate: #{new_women_bmr}"
    end
end

puts "How old are you (enter age as a number): "
x = $stdin.gets.chomp.to_i
puts "What is your weight (in pounds): "
y = $stdin.gets.chomp.to_i
puts "What is your height (in inches): "
z = $stdin.gets.chomp.to_i
puts "What is your gender (enter Male or Female): "
gen = $stdin.gets.chomp

bmr(x, y, z, gen)
