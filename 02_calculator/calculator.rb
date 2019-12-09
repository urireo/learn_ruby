#write your code here

def add(number1, number2)
  return number1+number2  
end
def subtract(number1,number2)
    return number1-number2
end

def sum(array_of_numbers)
    suma=0
    array_of_numbers.each do |numero|
      suma+=numero
    end
    return suma
end

def multiply(array_of_numbers)
   multiplic=1
   array_of_numbers.each do |numero|
      multiplic *= numero
    end
    return multiplic
end

def power(number1,number2)
  return number1**number2
end
def factorial(number1)
    fact=1
    if number1==0
      fact=1
    else
      for i in 1.. number1 do
          fact=fact*i
      end
    end
    return fact
end

array_of_numb =[1,2,3,4,5]
puts "the sum of 1,2,3,4,5 = #{sum(array_of_numb)}"
puts "addition of 10 +5 =  #{add(10,5)}"
puts "substraction of 10-5 =s #{subtract(10,5)}"
puts "factorial of 1 = #{factorial(1)}"
puts "power of 7 to the 5th = #{power(7,5)}"
puts "multiplication of 21 * 3 = #{multiply([21,3])}"
puts "multiplication of 2*3*4 = #{multiply([2,3,4])}"



