h = Hash.new { |h, k| h[k] = Hash.new { |hh, kk| } }
while 1
  print "Inter product name: "
  product_name = gets.chomp
  if product_name == "stop"
    break
  end
  print "Inter the price: "
  price = gets.chomp.to_f
  print "Inter the count: "
  count = gets.chomp.to_i
  h[product_name][price] = count
end

cost = 0

h.each { |key,value|
  print "You bought #{key} ,"
  value.each{|kk, vv|
    puts "which is worth #{kk} for 1 item, #{vv} items. Total price for this product is #{kk * vv}"
    cost += kk*vv
  }
}

puts "The cost of all purchases is #{cost}"
