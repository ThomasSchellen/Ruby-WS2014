def string_to_hash(string)
  tokens = string.split()
  frequency = Hash.new(0)
  tokens.each { |token| frequency[token] += 1 }
  return frequency
end

input = "ein Beispiel, ein Satz und ein Hund"
puts string_to_hash(input)
