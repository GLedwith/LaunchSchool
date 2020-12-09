=begin
1. Understand the problem:

Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

2. Set up test cases:

reverse_sentence('Hello World') == 'World Hello'

3. Describe inputs, outputs and data structures:

Inputs: string
Output: new string

Data structures:
string
array

4: Algorithm
- create a method called reverse_sentence that takes one argument
- convert input string into an array of words
- reverse the array of words
- convert array back into a string
=end

def reverse_sentence(str)
  str.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
