# #each method

numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

[1, 2, 3].each do |num|
  puts num
end

hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end

def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end
end

def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end

  puts 'hi'
end

# #select method

numbers = [1, 2, 3]
counter =  0

loop do
  break if counter == numbers.size
  number = numbers[counter]
  puts number if number % 2 == 1
  counter += 1
end

[1, 2, 3].select do |num|
  num.odd?
end

[1, 2, 3].select do |num|
  num + 1
end

[1, 2, 3].select do |num|
  num + 1
  puts num
end

# #map method

[1, 2, 3].map do |num|
  num * 2
end

[1, 2, 3].map do |num|
  num.odd?
end

[1, 2, 3].map do |num|
  num.odd?
  puts num
end

[1, 2, 3].map do |num|
  "hi"
end

# Enumerable#any?

[1, 2, 3].any? do |num|
  num > 2
end

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end

# Enumerable#all?

[1, 2, 3].all? do |num|
  num > 2
end

{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end

# Enumerable#each_with_index

[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end

{ a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end

# Enumerable#each_with_object

[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end

{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end

# Enumerable#first

[1, 2, 3].first

{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end

# Enumerable#include?

[1, 2, 3].include?(1)

{ a: "ant", b: "bear", c: "cat" }.include?("ant")


{ a: "ant", b: "bear", c: "cat" }.include?(:a)

# Enumerabele#partition

[1, 2, 3].partition do |num|
  num.odd?
end

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end
