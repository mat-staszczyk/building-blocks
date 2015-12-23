def stock_picker(array)
	raise ArgumentError, "I need at least 2 numbers" if array.size < 2

	max = array[0,2]
	array.combination(2).map { |x| max = x if (x.last - x.first) > (max.last - max.first) }
	result = []
	max.each do |y| 
    result << array.find_index(y) 
  end
end
