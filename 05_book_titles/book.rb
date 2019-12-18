class Book# write your code here
  attr_accessor :title
  #array_prepositions=["aboard","about","above","across","after","against","along","amid","among","anti","around","as","at","before","behind","below","beneath","beside","besides","between","beyond","but","by","concerning","considering","despite","down","during","except","excepting","excluding","following","for","from","in","inside","into","like","minus","near","of","off","on","onto","opposite","outside","over","past","per","plus","regarding","round","save","since","than","through","to","toward","towards","under","underneath","unlike","until","up","upon","versus","via","with","within","without"]
  # def initialize(title)
  #  @title=title
  #end
  
  def initialize(title)
    array_of_words=title.split(/\s/) #transforms a string into array
    string=array_of_words[0].capitalize #capitalizes first word of sentence
    array_little=["the","a","on","to","by","at","an","in","for","and","over"," "]
    if array_of_words.length>1
      for i in 1..array_of_words.length 
        string+=" "
        if !(array_little.include? array_of_words[i])
          string+=array_of_words[i].to_s.capitalize
        else #not capitalizes
          string+=array_of_words[i].to_s #little words are not capitalized
        end
      end
      @title = string
    end
   return string
  
  end
end

book1=Book.new("inferno")
book2=Book.new("stuart little")
book3=Book.new("alexander the great")
book4=Book.new("to kill a mockingbird")
book5=Book.new("to eat an apple a day")
book6=Book.new("war and peace")
book7=Book.new("love in the time of cholera")
book8=Book.new("what i wish i knew when i was 20")#shoudl always capitalize I
book9=Book.new("the man in the iron mask")
=begin puts book1.title
puts book2.title
puts book3.title
puts book4.title
puts book5.title
puts book6.title
puts book7.title
puts book8.title
puts book9.title 
=end
