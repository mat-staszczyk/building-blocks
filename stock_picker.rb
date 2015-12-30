def stock_picker(array)
	raise ArgumentError, "I need at least 2 numbers" if array.size < 2

	max = array[0,2]
	array.combination(2).map { |x| max = x if (x.last - x.first) > (max.last - max.first) }
	result = []
	max.each { |y| result << array.find_index(y) }
  result[1] += 1 if result[0] == result[1]
  return result
rescue Exception => e
	puts e.message
end

puts "Enter stock prices for each day, seperated by comas:"
prices = gets.chomp.split(',').map { |price| price.to_i }
puts stock_picker(prices)