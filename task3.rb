my_array = [1, 2]

while my_array[-1] + my_array[-2] < 100
  my_array.push(my_array[-1] + my_array[-2])
 end

for number in my_array
  puts number
end
