=begin
1. Understand the problem:

Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array.
The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.



2. Set up test cases:

average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3


3. Describe inputs, outputs and data structures:

Inputs: array
Output: integer

Data structures:
Array
integer

4: Algorithm
- create a method called average that takes one argument (an array)
- find the sum of the array and save the result to a variable called sum
- count how may integers are in the array and save result to a variable called count
- divide the save variable by the count variable
- return result to find the average

=end

def average(arr)
  sum = arr.sum
  arr_size = arr.count

  sum / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
