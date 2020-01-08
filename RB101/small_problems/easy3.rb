# # Exercise 1: Searching 101

numbers = []

puts '>> Enter the 1st number:'
numbers << gets.chomp.to_i
puts '>> Enter the 2nd number:'
numbers << gets.chomp.to_i
puts '>> Enter the 3rd number:'
numbers << gets.chomp.to_i
puts '>> Enter the 4th number:'
numbers << gets.chomp.to_i
puts '>> Enter the 5th number:'
numbers << gets.chomp.to_i
puts '>> Enter the 6th number:'
num6 = gets.chomp.to_i

if numbers.include?(num6)
  puts "The number #{num6} appears in #{numbers}"
else
  puts "The number #{num6} does not appear in #{numbers}"
end

# # Exercise 2: Arithmetic integer

puts 'Enter your first number:'
first_number = gets.chomp.to_i
puts 'Enter your second number:'
second_number = gets.chomp.to_i

addition_total = first_number + second_number
subtraction_total = first_number - second_number
product_total = first_number * second_number
quotient_total = first_number / second_number
remainder_total = first_number % second_number
power_total = first_number**second_number

puts "#{first_number} + #{second_number} = #{addition_total}"
puts "#{first_number} - #{second_number} = #{subtraction_total}"
puts "#{first_number} * #{second_number} = #{product_total}"
puts "#{first_number} / #{second_number} = #{quotient_total}"
puts "#{first_number} % #{second_number} = #{remainder_total}"
puts "#{first_number} ** #{second_number} = #{power_total}"

# # Exercise 3: Counting the numbers of characters

def prompt(message)
  puts ">> #{message}"
end

def number_of_characters(words)
  words.split.join.size
end

prompt('Please write word or multiple words:')
words = gets.chomp

prompt("There are #{number_of_characters(words)} characters in #{words}.")

# Exercise 4: multiplying two numbers

def multiply(num1, num2)
  num1 * num2
end

# # Exercise 5: Squaring an argument

def square(num)
  multiply(num, num)
end

# Exercise 6: Exclusive Or

def xor?(num1, num2)
  return true if num1 && !num2
  return true if num2 && !num1
  false
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

# Exercise 7: Odd list

# Option 1:

def oddities(array)
  odd_array = []
  index = 0
  while index < array.size
    odd_array << array[index]
    index += 2
  end
  odd_array
end

# Option 2:

def oddities(array)
  array.each_index {|x| puts x if x.odd? }
end

p oddities([2, 3, 4, 5, 6])

# Exercise 8: Palindromic strings (part 1)

def palindrome?(string)
  string == string.reverse
end

# Further exploration

def palindrome?(input)
  input == input.reverse || input.join == input.join.reverse
    rescue
    return input == input.reverse
end

# Exercise 9: Palindromic strings (part 2)

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

# Exercise 10: Palindromic numbers

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)
