#write your code here
def echo(any_string)
  return any_string.to_s
end

def shout(any_string)
   return any_string.upcase 
end

def repeat(any_string,number_times=2)
   final_string=""
   number_times.times do
      final_string+=any_string+" "
   end
   return (final_string).strip #  " "+ any_string).to_s
end
def start_of_word(any_string, lenght=1)
  return any_string[0,lenght] 
end

def first_word(any_string="")
    return any_string[0,any_string.index(" ")]#returns first word before " "
end

def titleize(any_string)
  array_of_words=any_string.split(/\s/) #transforms a string into array
  string=array_of_words[0].capitalize #capitalizes first word of sentence
  array_little=["the","a","on","to","by","at","in","for","and","over"," "]
  if array_of_words.length>1
    for i in 1..array_of_words.length 
      string+=" "
      if !(array_little.include? array_of_words[i])
          string+=array_of_words[i].to_s.capitalize
      else #not capitalizes
          string+=array_of_words[i].to_s #little words are not capitalized
      end
    end
  end
  return string.strip
end