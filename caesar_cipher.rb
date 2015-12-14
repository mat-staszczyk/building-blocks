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
  end.join
end
