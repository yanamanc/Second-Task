vowels = %w(a e o u i)
result = {} 

("a".."z").each.with_index(1) do |item, index|
  	result[index] = item if vowels.include?(item)
end
puts "#{result}"
