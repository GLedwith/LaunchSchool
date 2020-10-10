# Exercise 1: New pet

pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]

puts "I have a pet #{my_pet}!"


# Exercise 2: More than one

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2, 3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# Exercise 3: Free the lizard

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

my_pets.pop

puts "I have a pet #{my_pets[0]}!"

# Exercise 4: One isn't enough

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets << (pets[1])

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# Exercise 5: What color are you?

colors = ['red', 'yellow', 'purple', 'green']

colors.each do |color|
  puts "I'm the color #{color}!"
end

# Exercise 6: Doubled

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map do |number|
                   number * 2
                 end

p doubled_numbers

# Exercise 7: divisible by three
#
numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select do |number|
                      number % 3 == 0
                     end

p divisible_by_three

# Exercise 8: Favorite number (Part 1)

group = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

p group[0][1]

# Exercise 9: Favorite number (Part 2)

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

 flat_favorites = favorites.flatten

 p flat_favorites

 # Exercise 10: Are we the same?

 array1 = [1, 5, 9]
 array2 = [1, 9, 5]



p array1 == array2
p array1.equal? array2
