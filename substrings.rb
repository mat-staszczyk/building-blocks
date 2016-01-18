def substrings(word, dictionary)
	results = Hash.new(0) 
	dictionary.each do |d| 
		word.split(' ').select do |w|
      results[d] += 1 if w.downcase[d.downcase] 
    end
  end
  return results
end

puts "Give me a word:"
word = gets.chomp
puts "Give me a dictionary (comma delimited):"
dictionary = gets.chomp.split(",").map(&:strip)