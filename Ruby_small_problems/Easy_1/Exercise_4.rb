=begin
1. Understand the problem:

Write a method that counts the number of occurrences of each element in a given array.

2. Set up test cases:

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

Results:

car => 4
truck => 3
SUV => 1
motorcycle => 2


3. Describe inputs, outputs and data structures:

Inputs: array of strings
Output: hash: key as string and number of occurrences as the value

Data structures:
array
hash

4: Algorithm

- create a method called vehicles that takes one argument
- create an empty hash called results
- iterate through input array
- pass in each element as a key to results hash
- assign the value to the count of each element
- iterate through results hash and print out the key => value
=end

def count_occurrences(arr)
 results = {}

 arr.each do |element|
  results[element.downcase] = arr.count(element)
 end

 results.each do |key, value|
   puts "#{key} => #{value}"
 end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
