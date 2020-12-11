=begin
1. Understand the problem:

Write a method that takes one argument, a positive integer, and returns the sum of its digits.


2. Set up test cases:

sum(23) == 5 => 2 + 3 = 5
sum(496) == 19 => 4 + 9 + 6 = 19


3. Describe inputs, outputs and data structures:

Inputs: integer
Output: integer

Data structures:
integer
array
string

4: Algorithm
- create a method called sum that takes one argument (integer)
- convert integer into a string and convert into an array called saved_numbers
- create an empty array called results to store integers
- iterate through saved_numbers and convert each string digit into an integer
- move all integers into results array
- add all integers in results array and return


=end

def sum(int)
 saved_numbers = int.to_s.chars
 results = []
 saved_numbers.each do |num|
  results << num.to_i
 end
 results.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
