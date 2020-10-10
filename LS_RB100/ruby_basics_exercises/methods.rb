# Exercise 1: Print Me (part 1)

def print_me
  puts "I'm printing within the method!"
end

print_me

# Exercise 2: Print Me (Part 2)

def print_me
  "I'm printing the return value!"
end

puts print_me

# Exercise 3: Gretting through methods (part 1)

def hello
  "Hello"
end

def world
  "World"
end

puts "#{hello} #{world}"

# Exercise 4: Greetingt through methods (part 2)

def greet
  "#{hello} #{world}"
end

puts greet

# Exercise 5: Make and Model

def car(make, model)
  puts "The make is #{make} and the model is #{model}"
end

car('Toyota', 'Corolla')

# Exercise 6: Day or Night?

def time_of_day(daylight)
  if daylight
    puts "It's daylight!"
  else
    puts "it's nighttime!"
  end
end


daylight = [true, false].sample
time_of_day(daylight)

# Exercise 7: Naming Animals

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# Exercise 8: Name not found

def assign_name(name = 'Bob')
    name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

# Exercise 9: Multiply the Sum

def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end


puts add(2, 2) == 4
puts add(5, 4) == 9

puts multiply(add(2, 2), add(5, 4)) == 36

# Exercise 10: Random Sentence

def name(array)
  array.sample
end

def activity(array)
  array.sample
end

def sentence(name, activity)
  " #{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']


puts sentence(name(names), activity(activities))
