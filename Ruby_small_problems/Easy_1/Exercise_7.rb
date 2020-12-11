=begin
1. Understand the problem:

Write a method that takes one argument, a positive integer, and returns
a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.


2. Set up test cases:

stringy(6) == '101010'
stringy(9) == '101010101'


3. Describe inputs, outputs and data structures:

Inputs: integer
Output: string

Data structures:
integer
string
array

4: Algorithm
- create a method called stringy that takes one argument
- create an empty string called results
- iterate as many times as input integer
_ if int equals even then move '1' to results string
- else move '0' to input string \
return string

=end

def stringy(int)
  results = ""

  int.times do |i|
   results << "1" if i % 2 == 0
   results << "0" if i % 2 == 1
  end
  results
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
