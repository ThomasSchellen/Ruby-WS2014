#Aufgabe 1
french = ["je""de""ne""pas""le""la""tu""vous""il""et""à""un""qui""les""en""ça""faire""tout""on""que""ce""une""mes""pour""se""des"]
arabic = ["لا""من""هذا""أن""في""أنا""على""ما""هل""يا""و""لقد""ذلك""ماذا""أنت""هنا""لم""إلى""نعم""كان"]
hungarian = ["a""nem""az""hogy""és""egy""van""ez""is""meg""de""csak""mi""én""ha""azt""vagy""itt""igen""volt""ne""el""már""te""kell"]
finnish = ["on""ei""ja""se""hän""mitä""en""että""ole""olen""niin""minä""mutta""vain""sen""oli""sinä""nyt""tämä""jos""voi""olet""kun"]
danish = ["er""jeg""det""du""ikke""i""at""en""og""har""vi""til""på""hvad""mig""med""de""for""den""så""der""dig""han""kan""af"]

#Aufgabe2
class Identify
  def initialize
    @sprachen = Hash.new
    @text = ""
    @bericht = []
  end
  
  def to_s
  end
  
#Aufgabe 3
  def add_language(name, list)
    if(list.class==String)
      @sprachen[name] = list.split
    else
    @sprachen[name] = list
    end
    
  end
  
#Aufgabe 4
  def identify_language(text)
    @text=text
    @sprachen.each do |name, list|
      counter = 0
      list.each do |word|
        counter += text.split.count(word)
        @bericht << [name, counter]
      end
    
    end
    @bericht.sort! {|a,b| a[1] <=> b[1]}
      
    
    
   
  end
  
#Aufgabe 5
  def bericht()
    @bericht.each do |x|
      puts x
    end
  end
end

test = Identify.new

test.add_language("Arabisch", arabic)
test.add_language("Ungarisch", hungarian)
test.add_language("Finnisch", finnish)
test.add_language("Dänisch",danish)
test.add_language("Französisch",french)

test.identify_language("je suis le plus mal étudien.")
test.bericht()