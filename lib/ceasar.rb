def ceasar_cipher(text, shift)
  result = ""

  text.each_char do |char|
    if char =~ /[a-z]/
      shifted_char = ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
      result += shifted_char
    elsif char =~ /[A-Z]/
      shifted_char = ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
      result += shifted_char
    else
      result += char
    end
  end

  result
end

puts ceasar_cipher("Carlos", 2)
