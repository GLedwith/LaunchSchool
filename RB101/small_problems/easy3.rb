# Exercise 1: Searching 101
#
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

# Exercise 2: Arithmetic integer

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

# Exercise 3: Counting the numbers of characters

def prompt(message)
  puts ">> #{message}"
end

def number_of_characters(words)
  words.split.join.size
end

prompt('Please write word or multiple words:')
words = gets.chomp

prompt("There are #{number_of_characters(words)} characters in #{words}.")
