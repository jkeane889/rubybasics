def to_initials(name)
  initials = ""
  full_name = name.split(" ")
  full_name.each do |ele|
    ele.each_char.with_index do |char, i|
      if i < 1
      initials += char
      end
    end
  end
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
