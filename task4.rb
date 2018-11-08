months = {
  1 => 31,
  2 => 28,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 31,
  7 => 30,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31
}

print "Inter the day: "
day = gets.chomp.to_i
print "Inter the month: "
month = gets.chomp.to_i
print "Inter the year: "
year = gets.chomp.to_i

if (year % 400 == 0) || ((year % 4 == 0) && !(year % 100 == 0))
  months[2] = 29
end
 
months.each do |key, value|
  day += value
  break if key == month
end

print day
  
