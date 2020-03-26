# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Inputs:
# integer greater than 0
# string
# either 's' or 'p'

# Outputs:
# string showing either the sum or product of all numbers between 1 and the entered integer.

# Requirements
# Explicit
# user enters an integer greater than 0
# prompt user to choose 's' for sum and 'p' for product

# Implicit
# write a method to compute the sum of all integers
# write a method to compute the product of all integers

# Mental model
# determine a list of numbers between 1 and an end number greater than 0
# then ask the user if they want to either add all the numbers together or multiply them all together
# return a string with the result

# Data structures
# String
# range
# numbers
# calculations

# Algorithm

# prompt user for a number greater than 0
# store answer to a variable named 'number'
# prompt the user to enter 's' to compute the sum, 'p' to compute the product
# store answer in a variable naemd operation
# create a method to compute the sum
# method needs one argument: number
# start with 1 up to number and return the sum
# create a method to compute the product (same way as sum method)
# IF the user enters 's' then return a string with the sum
# use the sum method in  string interpolation
# IF the user enters 'p' then return a stirng with the product
# use the product method in string interpolation
# otherwise return an error message

def compute_sum(number)
  (1..number).reduce(:+)
end

def compute_product(number)
  (1..number).reduce(:*)
end

number = nil

loop do
  puts "=> Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  break if number > 0
end

operation = nil

loop do
  puts "=> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
  break if operation == 's' || operation == 'p'
end

if operation == 's'
  puts "The sum of the integers between 1 and #{number} is #{compute_sum(number)}"
elsif operation == 'p'
  puts "The product of the integers between 1 and #{number} is #{compute_product(number)}"
else
  puts "Oops, wrong entry please try again!"
end

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
