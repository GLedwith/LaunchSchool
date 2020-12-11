=begin
1. Understand the problem:

Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters reversed.
Each string will consist of only letters and spaces.
Spaces should be included only when more than one word is present


2. Set up test cases:

reverse_words('Walk around the block') # => Walk dnuora the kcolb

3. Describe inputs, outputs and data structures:

Inputs: string
Output: new string 

Data structures:
string
array

4: Algorithm
- create a method called reverse_words that takes one argument
- convert input string into an array of words and save result to a variable called words
- create an empty array called results
- iterate through words array
- IF word length is greater than or equals to 5 then reverse all characters in that word
- ELSE leave word as is
- Move all words to results array
- convert results array into a string
- return string
=end

def reverse_words(str)
  words = str.split
  results = []

  words.each do |word|
   if word.size >= 5
     results << word.reverse!
   else
     results << word
   end
  end
  results.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
