file = File.open("gsc.csv", "w+")
new_file = File.new("gs_array.rb", "w+")
array = []

file.each_line do |line|
  array << Array.new(line)
end

new_file << array
file.close
new_file.close