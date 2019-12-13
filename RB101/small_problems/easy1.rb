# Exercise 1: Repeat yourself

# Option 1:
def repeat(string, num)
  num.times do
    puts string
  end
end

# Option 2:
def repeat(string, num)
  counter = 0
  loop do
    puts string
    counter += 1
    break if counter == num
  end
end

# Option 3:
def repeat(string, num)
  counter = 0
  until counter == num
    puts string
    counter += 1
  end
end

# Option 4:
def repeat(string, num)
  counter = 0
  while counter < num
    puts string
    counter += 1
  end
end

# Exercise 2: Odd

# Option 1:
def is_odd?(num)
  if num % 2 != 0
    puts 'true'
  else
    puts 'false'
  end
end

# Option 2:
def is_odd?(num)
  num % 2 != 0 ? true : false
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

# Exercise 3: List of digits

def digit_list(int)
  numbers = int.to_s
  numbers = numbers.split(//)
  numbers.map { |e| e.to_i }
end

p digit_list(12345)

# Exercise 4: How many?

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
def count_occurrences(array)
  occurences = {}

  array.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)

# Exercise 5: Reverse it (part 1)

def reverse_sentence(string)
  puts string.split.reverse.join(' ')
end

reverse_sentence('Reverse these words')

# Exercise 6: Reverse it (part 2)

# Option 1:
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.length >= 5
    words << word
  end

  words.join(' ')
end

# Option 2:
def reverse_words(string)
  words = string.split

  words.each do |word|
    word.reverse! if word.length >= 5
  end

  words.join(' ')
end

# Option 3:
def reverse_words(string)
  string.split.map { |word| word.length >= 5 ? word.reverse : word }.join(' ')
end

puts reverse_words('Launch School is the best') # => hcnuaL loohcS is the best

# Exercise 7: Stringy strings

# Option 1:
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

# Option 2:
def stringy(size)
  Array.new(size) { |index| index.even? ? 1 : 0 }.join
end

puts stringy(6) # == '101010'

# Exercise 8: Array average

# Option 1:
def average(array)
  array.sum / array.length
end

# Option 2:
def average(array)
  array.reduce(:+) / array.length
end

# Exercise 9:

def sum(int)
  sum = 0
  string_digits = int.to_s.chars

  string_digits.each do |string_digit|
    sum += string_digit.to_i
  end
  sum
end

# Exercise 10: What's my bonus

def calculate_bonus(int, bool)
  if bool == true
    int / 2
  else
    0
  end
end

def calculate_bonus(int, bool)
  bool == true ? int / 2 : 0
end
