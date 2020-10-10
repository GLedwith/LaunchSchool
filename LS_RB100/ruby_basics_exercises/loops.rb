# Loops
# Exercise 1: Runaway loop

loop do
  puts 'Just keep printing...'
  break
end


# Exercise 2: Loopception

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end

 break
end

puts 'This is outside all loops.'

# Exercise 3: Control the loop

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
    iterations += 1
  break if iterations > 5
end

# Exercise 4: Loop on Command

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes"
  puts "Incorrect answer, please answer 'yes!'"
end

# Exercise 5: Say hello

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count >= 5
end

# Exercise 6: Print While

numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers


# Exercise 7: Count up

count = 1

until count > 10
  puts count
  count += 1
end

# Exercise 8: Print until

numbers = [7, 9, 13, 25, 18]

n = 0

until n == numbers.length
  puts numbers[n]
  n += 1
end


until numbers.empty?
  puts numbers.shift
end


until numbers.size == 0
  puts numbers.shift
end

# Exercise 9: That's Odd

for i in 1..100
  puts i if i.odd?
end

# Exercise 10: Greet your friends

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}"
end






# Loops 2

# Exercise 1:  Even or Odd?

count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end

  break if count == 5
  count += 1
end


count = 1

loop do
  puts "#{count} is #{count.even? ? 'even' : 'odd'}"
  break if count == 5
  count += 1
end

loop do
  puts count.even? ? "#{count} is even!" : "#{count} is odd!"
  break if count == 5
  count += 1
end

# Exercise 2: Catch the Number

loop do
  number = rand(100)
  puts number
break if number >= 0 && number <= 10
end

loop do
 number = rand(100)
 puts number
 break if number.between?(0, 10)
end

loop do
  number = rand(100)
  puts number
  if (1..10).include? number
    break
  end
end

# Exercise 3: Conditional loop

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end


loop do
  puts process_the_loop ? "The loop was processed!" : "The loop wasn't processed!"
  break
end

# Exercise 4: Get the sum

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
     puts "That's correct!"
     break
  else
    puts "Wrong answer. Try again!"
  end
end

 # Exercise 5: Insert numbers

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.size == 5
end
puts numbers

# Exercise 6: Empty the array

 names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.empty?
end

loop do
  puts names.shift
  break if names.size == 0
end

loop do
  puts names.shift
  break if names.length == 0
end

# Exercise 7: Stop Counting

5.times do |index|
  puts index
  break if index == 2
end


5.times do |index|
  puts index
  break if index >= 2
end


# Exercise 8: Only even

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Exercise 9: First to five

number_a = 0
number_b = 0


loop do
  number_a += rand(2)
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end

loop do
  number_a += rand(2)
  number_b += rand(2)

  if number_a == 5|| number_b == 5
    puts "5 was reached!"
    break
  end
 end

# Exercise 10: Greeting

 def greeting
   puts "Hello!"
 end

 number_of_greetings = 2

 while number_of_greetings <= 4
   greeting
   number_of_greetings += 2
end
