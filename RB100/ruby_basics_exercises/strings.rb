# Exercise 1: Create a string

empty_string = String.new

empty_string = ""

# exercise 2: Quote confusion

puts "It's now 12 o'clock"

# Exercise 3: Ignoring case

name = 'Roger'

puts name.casecmp("RoGer") == 0
puts name.casecmp("DAVE") == 0

# Exercise 4: Dynamic string

name = 'Elizabeth'

puts "Hello, #{name}!"

# Exercise 5: combining names

first_name = 'John '
last_name = 'Doe'

full_name = first_name + ' ' +  last_name

puts full_name

first_name << last_name

puts first_name

# Exercise 6: Tricky formatting

state = 'tExAs'

state.capitalize!

puts state

# Exercise 7: Goodbye, not hello

greeting = 'Hello!'
# puts greeting

# puts greeting.replace "Goodbye"

# puts greeting

greeting.gsub!("Hello!", "Goodbye!")

puts greeting

# Exercise 8: Print the alphabet

alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split(//)

# Exercise 9: Pluralize

words = 'car human elephant airplane'

words.split(' '). each do |word|
  puts word + 's'
end


# Exercise 10:  Are you there?

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')
