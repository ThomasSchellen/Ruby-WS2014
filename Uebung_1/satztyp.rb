def satztyp(satz)
  if satz[-2] == "."
    puts "Aussagesatz"
  elsif satz[-2] == "!"
    puts "Befehlssatz"
  elsif satz[-2] == "?"
    puts "Fragesatz"
  else
    puts "Status unklar"
  end
end
puts "Geben Sie einen Satz ein."
userInput = gets 

puts satztyp(userInput)