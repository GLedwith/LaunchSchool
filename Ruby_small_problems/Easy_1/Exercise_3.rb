=begin
1. Understand the problem:

Write a method that takes one argument, a positive integer, and returns a list of the digits in the number

2. Set up test cases:

digit_list(12345) == [1, 2, 3, 4, 5]     # => true

3. Describe inputs, outputs and data structures:

Inputs: integer
Output: array of integers

Data structures:
Array

4: Algorithm
- create a method called digit_list that takes one argument (an integer)
- create an empty array called results
- convert integer into a string
- convert string into an array of characters
- iterate through array of characters
- convert each character into an integer and move it to results array
- return results array
=end

# option 1:

def digit_list(int)
  results = []
  string_arr = int.to_s.chars

  string_arr.each do |element|
    results << element.to_i
  end
  results
end

# option 2:

# def digit_list(int)
#   int.digits.reverse
# end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
