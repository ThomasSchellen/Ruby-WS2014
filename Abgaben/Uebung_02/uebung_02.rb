class Document
  attr_accessor :text, :token_list

  def initialize(doc)
    @text = doc
    @token_list = doc.split
  end

  def to_s
    puts @text[0..70] + "..."
    puts @token_list[0..9] << "..."
  end

  def tokenisiere_dokument #(token_array)
    neue_liste = []
    @token_list.each do |x|
      neue_liste += tokenisiere(x)
    end
    @token_list = neue_liste
    p neue_liste
  end
  
  def wort_normalerweise_klein(token)
  
   if  @token_list.count(token.capitalize) < @token_list.count(token.downcase)
     return true
   else
     return false
   end
 end
 
  def tokenisiere (token)
  
    if ['(',"\'","\""].include?(token[0])
      [token[0]] + tokenisiere(token[1..-1])
    elsif [')','\'','\"',".",":",";",",","!","?"].include?(token[-1])
      tokenisiere(token[0...-1]) + [token[-1]]
    else
      [token]
    end
  end
#sorry hab ich echt nicht hinbekommen. habe lange probiert.
  # def klassifiziere_punkte()
 #   @token_list.each_with_index(i) do |y|
  #   if y[i] == "."
   #   if y[i+1] == y[i+1].downcase
    ##   y[i] = y[i-1]+y[i]
      #else
#        
#      end
#     end
#  end
#end
 

end


test_dokument = Document.new("Das ist ein dtsch. fröhliches Nilpferd. Nilpferd sagst du? Ist es das? Ja das ist es." )
   
   puts test_dokument.tokenisiere_dokument()
   puts test_dokument.wort_normalerweise_klein("ist")
   puts test_dokument.wort_normalerweise_klein("Nilpferd")
 #  puts test_dokument.klassifiziere_punkte()
