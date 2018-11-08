basket = Hash.new { |product_name, value| basket[value] = Hash.new { |price, count| } }
while 1
  print "Inter product name: "
  product_name = gets.chomp
  break if product_name == "stop"
  print "Inter the price: "
  price = gets.chomp.to_f
  print "Inter the count: "
  count = gets.chomp.to_i
  basket[product_name][price] = count
end

cost = 0

basket.each do |key,value|
  print "You bought #{key} ,"
  value.each do |price, count|
    puts "which is worth #{price} for 1 item, #{count} items. Total price for this product is #{price * count}"
    cost += price * count
  end
end

puts "The cost of all purchases is #{cost}"
