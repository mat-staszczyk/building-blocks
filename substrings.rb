def substrings(word, dictionary)
	results = Hash.new(0) 
	dictionary.each do |d| 
		word.split(' ').select do |w|
      results[d] += 1 if w.downcase[d.downcase] 
    end
  end
end
