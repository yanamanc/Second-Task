months = {
  "January" => 31,
  "February" => 28,
  "March" => 31,
  "April" => 30,
  "May" => 31,
  "June" => 31,
  "July" => 30,
  "August" => 31,
  "September" => 30,
  "October" => 31,
  "November" => 30,
  "December" => 31
}

print "Inter the day: "
day = gets.chomp.to_i
print "Inter the month: "
month = gets.chomp.capitalize
print "Inter the year: "
year = gets.chomp.to_i

if (year % 400 == 0) || ((year % 4 == 0) && !(year % 100 == 0))
  months["February"] = 29
end

 
months.each {|key, value| 
  if key == month
    break
  end
  day += value
}



print day
  
