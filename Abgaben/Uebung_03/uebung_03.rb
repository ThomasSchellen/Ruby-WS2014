class TextFilter
  def initialize(list)
    if  list.class == String
     @wortliste = list.split
    elsif list.class == Array
      @wortliste = list
    else
      puts "Error: arguement is neither string nor array!"
    end   
  end
  
  def star_generator(str)
    i=1
    censored=""
    while (i<=str.length)
      censored += "*"
      i+=1
    end
    return censored
  end
  
  def transcode(inputText)
    @text = inputText.split
     @text.map!{  |x|
       if
         @wortliste.include? x
         star_generator(x)  
       else
         x
       end
     }
     return @text.join(" ")
   
  end
  
  def neue_woerter(newList)
    if  newList.class == String
        @wortliste += newList.split
       elsif newList.class == Array
         @wortliste += newList
       else
         puts "Error: arguement is neither string nor array!"
       end  
  end
end

test = TextFilter.new("Popo")
test.neue_woerter("Haaren")
testText = "Wir haben alle einen runden Popo mit Haaren dran."
puts test.transcode(testText)