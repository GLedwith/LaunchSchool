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

4: Describe Algorithm
- create a method called digit_list that takes one argument (an integer)
- convert integer into an array that contains all the digits


=end

# Option 1:

def digit_list(int)

end






# option 2:

def digit_list(int)
  int.digits.reverse
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
