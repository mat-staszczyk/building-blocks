def caesar_cipher(text, key)
  text.bytes.map do |x|
	  case x
		when (65..90) then
		  x += key
		  x -= 26 if x > 90
	  when (97..122) then
	    x += key
	    x -= 26 if x > 122
	  else
	    x
	  end
	  x.chr
  end.join
end

puts "Input string:"
string = gets.chomp
puts "Shift factor:"
shift = gets.chomp.to_i
puts "Caesar Cipher:"
puts caesar_cipher(string, shift)