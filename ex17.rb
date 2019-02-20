from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

#we could do these two on one line, how?
indata = File.open(from_file) {|f| f.read()}

output = File.open(to_file, 'w')
output.write(indata)

output.close()
