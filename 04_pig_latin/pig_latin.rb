def oneword(word_to_translate="")
  word_array=word_to_translate.scan (/\w/)  #creates an array with all the letters in the word argument [s,q,u,a,r,e]
  first_letter=word_to_translate[0]  #assigns first letter of word "a"
  vowels=["a","e","i","o","u","A","E","I","O","U"]
  first_letter_is_consonant = !vowels.include?(first_letter)
  while first_letter_is_consonant and !((first_letter=="u" or first_letter=="U") and (word_array=="Q" or word_array=="q"))      #first letter is  a consonant   
    letter=word_array.shift
    word_array<< letter        #pushes first letter to end of word
    if ((first_letter=="Q" or first_letter=="q") and (word_array[0]=="u" or word_array[0]=="U")) or(!vowels.include?(word_array[0]))  #QU or qu or consonant in second letter
      word_array<< word_array.shift                    #pushes first letter to end of word again
      first_letter=word_array[0]
    end 
    
    if ((first_letter=="U" or first_letter=="u") and (word_array.last()=="q" or word_array.last()=="Q")) or(!vowels.include?(word_array[0]))  #QU or qu or consonant in third letter
      word_array<< word_array.shift                    #pushes first letter to end of word again
    end 
    first_letter=word_array[0]
    first_letter_is_consonant = !vowels.include?(first_letter)
  end #of While
  word_array.push("ay")
  return (word_array.join).to_s 
end

def translate(string_to_translate="")
  total_array=Array.new
  total_array=string_to_translate.split #assigns each word of phrase to translate to this array  ["each, " " , pay]
  if !(string_to_translate.include?(" ")) #one word  or total_array.length >1
    total_array[0]= oneword(string_to_translate)#first_letter=word_to_translate[0] 
  else
    for i in(0..total_array.length-1)
      total_array[i]="#{oneword(total_array[i])} "  
      i+=1
    end
  end
  return total_array.join.strip
end

puts translate("square")
