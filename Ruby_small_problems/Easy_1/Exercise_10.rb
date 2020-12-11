=begin
1. Understand the problem:

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.


2. Set up test cases:

calculate_bonus(2800, true) == 1400
calculate_bonus(1000, false) == 0



3. Describe inputs, outputs and data structures:

Inputs: integer and boolean
Output: integer

Data structures:
integers


4: Algorithm
- create a method called calculate_bonus that takes two arguments
- if boolean equals true then divide integer by 2 and save result to a variable called bonus
- if boolean equals false then return 0

=end

def calculate_bonus(int, bool)
  if bool == true
    int / 2
  else
    0
  end
end

# refactored:
def calculate_bonus(int. bool)
  bool ? int / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
