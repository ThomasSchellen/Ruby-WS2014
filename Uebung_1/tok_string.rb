def tokenisiere_string(satz)
  
  satz.split()
  
end
puts "Geben Sie einen Satz ein, den Sie tokenisieren moechten."
userInput = gets
puts "Die einzelnen Token lauten:"
puts tokenisiere_string(userInput)