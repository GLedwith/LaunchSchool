
=begin
Easy 1, exercise 1:  Repeat yourself

Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
=end

def repeat(str, num)
  counter = 0

  loop do
   puts str
   counter += 1
   break if counter == num
  end
end

repeat("Hello", 3)
