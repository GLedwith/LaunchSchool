# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

# Input:
# String of words

# Output:
# String - highest scoring word

# Requirements

# Explicit

# find the highest scoring word.
# return the highest scoring word as a string
# If two words score the same, return the word that appears earliest in the original string.

# Implicit:

# figure out how to match each letter to a number based on it's position in the alphabet
# compare each words total score to each other words total score

# Mental model:

# Determine the highest scoring word in a string by assigning each character in a word a numerical value and adding all the character values together for each word, then compare each words total score to find the word with the highest score, finally, return the highest scoring word as a string

# Data structures:

# String
# Array
# Constant

# Algorithm

# 1. Create a constant named 'ALPHABET' and set it to an array of letters, use the word 'zero' at index position 0
# then start letter count at index position 1 for the letter 'a'
# 2. Build a helper method named 'word_score' to compute each words score, and use 'ALPHABET' constant to find
# numerical value for each letter
# 3. Build a method named 'alphabet_score'that takes a string as an argument
# Inside the method:
# --split the input string into an array of substrings and assign it to a variable named 'words'
# -- create a variable named 'word_scores' and set it to an empty array
# 4. Iterate over 'words' array using 'word' as a local variable
# -- pass 'word' into the 'word_score' method
# -- push the return values into the 'word_scores' array
# 5. Use element reference to find highest scoring word by finding its index and returing the the word with the maximum value
# 6. Save the return value to a variable named 'highest_scoring_word'
# 7. Return highest scoring word

ALPHABET = %w(zero a b c d e f g h i j k l m n o p q r s t u v w x y z).freeze

def word_score(string)
  string.chars.map { |char| ALPHABET.index(char) }.sum
end

def alphabet_score(string)
  words = string.split(' ')
  word_scores = []

  words.each do |word|
    word_scores << word_score(word)
  end

  highest_scoring_word = words[word_scores.index(word_scores.max)]
  highest_scoring_word
end

p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'
