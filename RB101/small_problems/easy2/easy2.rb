# Exercise 1: Teddy's age

def persons_age(name)
  age = rand(20..200)
  name.empty? ? "Teddy is #{age} years old!" : "#{name} is #{age} years old!"
end

puts 'Please enter your name:'
name = gets.chomp

puts persons_age('Garry')

# Exercise 2: How big is the room?

SQMETERS_TO_SQFEET = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

square_meters = length * width
square_feet = square_meters * SQMETERS_TO_SQFEET

puts "The area of the room is #{square_meters} square meters! (#{square_feet}square feet)"

# Exercise 3: Tip calculator_messages

puts '>> What is the bill?'
bill_amount = gets.chomp.to_f

puts '>> What is the tip precentage'
tip_rate = gets.chomp.to_i

tip_amount = (bill_amount / 100 * tip_rate)
total_amount = (bill_amount + tip_amount)

puts ">> The tip amount is $#{format('%0.2f', tip_amount)}"
puts ">> The total is $#{format('%0.2f', total_amount)}"

# Exercise 4: When will I retire

puts '>> What is your age?'
age = gets.chomp.to_i

puts '>> At waht age would you like to retire?'
retirement_age = gets.chomp.to_i

years_to_retirement = retirement_age - age
current_year = Time.now.year
retirement_year = current_year + years_to_retirement.to_i

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"

# Exercise 5: Greeting the user

puts 'What is your name?'
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE YOU SCREAMING?"
else
  puts "Hello #{name}."
end

# Exercise 6: Odd numbers

# Option 1:
numbers = 1..99
numbers = numbers.to_a

numbers.each do |number|
  puts number if number.odd?
end

# Option 2:
(1..99).select { |num| puts num if num.odd? }

# Exercise 7: Even numbers

(1..99).map { |num| puts num if num % 2 == 0 }

# Exercise 8: Sum or Product of Consecutive Integers

def compute_sum(number)
 (1..number).reduce(:+)
end 

def compute_product(number)
  (1..number).inject(:*)
end

puts " >> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts " >> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}"
else operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}"
end
