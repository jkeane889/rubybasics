def lrhw_checklist(i)
    while (i <= 52)
        puts "You still have lesson #{i} to complete."
        i = i + 1
    end
end

puts "Enter the lesson you are on: "
lesson_number = $stdin.gets.chomp.to_i
lrhw_checklist(lesson_number)
