vowels = [ "a", "e", "i", "o", "u" ]
result = {} 

("a".."z").each_with_index { |item, index|
  if vowels.include?(item)
  	result[index + 1] = item 
  end
}
puts "#{result}"
