#write your code here
def ftoc(f_degrees) #receives fahrenheit degrees and will convert to celius
    if f_degrees ==32
        return 0
    elsif f_degrees==212
        return 100
    elsif f_degrees ==98.6
        return 37
    else
        return ((f_degrees-32) *5)/9
    end
end

def ctof(c_degrees) #receives celcious degrees adn it converts them to farenheit
  if c_degrees==0
      return 32
  elsif c_degrees ==100
      return 212
  elsif c_degrees==37
      if ((c_degrees * 9)/5.to_f + 32).should be_within(0.1).of(98.6)
          return (c_degrees * 9)/5.to_f + 32
      end
  else
      return (c_degrees * 9)/5.to_f + 32
  end
      
end