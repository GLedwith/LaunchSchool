=begin
1. Understand the problem:

Build a program that displays when the user will retire
and how many years she has to work till retirement.


2. Set up test cases:

3. Describe inputs, outputs and data structures:

Inputs: string
Output: string

Data structures:
string

4: Algorithm
- ask the user for their age and store answer in a variable
- ask the user what age they would like to retire and store answer in a variable
- print the year
- print the year they will retire by subtracting their age from the age they want to retire at
- add the current year to the amount of years until retirement
- print out how many years they have until retirement
=end

puts "What is your age?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retirement = gets.chomp.to_i

years_to_retire = retirement - age

current_year = 2020

retirement_year = years_to_retire + current_year

puts "It's #{current_year}. You will retire in #{retirement_year}"
puts "You have only #{years_to_retire} of work to go!"
