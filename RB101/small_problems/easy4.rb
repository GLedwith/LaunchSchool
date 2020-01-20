# Question 1: Short long short

def short_long_short(string1, string2)
  if string1.length < string2.length
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')


def short_long_short(string1, string2)
  array = [string1, string2].sort { |a, b| a.length <=> b.length}
  array.first + array.last + array.first
end


p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')

# Question 2: What century is that?

def century(year)
  century = (year - 1) / 100 + 1
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if (11..13).include?(century % 100)
  centuary_last_digit = century % 10

  case centuary_last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# Question 3: Leap years (part 1)

def leap_year?(year)
  if year % 4 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 400 == 0
    true
  end
end

# Refactored:
def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 || year % 100 != 0 )
end

# Question 4: Leap years (part 2)

def leap_year?(year)
  if year <= 1752
    year % 4 == 0 unless year == 1
  else
  (year % 400 == 0) || (year % 4 == 0 || year % 100 != 0 )
 end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# Questin 5: Multiples of 3 and 5

def multisum(number)
  multiples = []
  (1..number).each { |i| multiples << i if i % 3 == 0 || i % 5 == 0  }
  multiples.sum
end

# # Option 2:

def multisum(number)
  multiples = []
  (1..number).select { |i| multiples << i if i % 3 == 0 || i % 5 == 0 }
  multiples.reduce(:+)
end

# Question 6: Running tools

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

# Further exploration:

def running_total(array)
  results = []
  sum = 0
  array.each do |element|
    sum += element
    results << sum
  end
  results
end

def running_total(array)
  new_array = []

  until array.empty?
    new_array.prepend(array.sum)
    array.pop
  end

  new_array
end

# Question 7: Convert a string to a number!

DIGITS = {...
  '0' => 0, '1' => 1, '2'=> 2, '3' => 3,
  '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |key| DIGITS[key]}

  digits.inject(0) { |accumulator, value| (10 * accumulator) + value}
end

# Question 8: Convert a string to a signed number

def string_to_signed_integer(string)
  if string[0] == "-"
    string.slice!(0)
    - string_to_integer(string)
  elsif string[0] == "+"
    string.slice!(0)
    string_to_integer(string)
  else
    string_to_integer(string)
 end
end

# Question 9: Convert a number to a string

STRING_DIGITS = { ...
    0 => '0', 1 => '1', 2 => '2', 3 => '3',
    4 => '4', 5 => '5', 6 => '6', 7 => '7',
    8 => '8', 9 => '9'
  }

def integer_to_string(integer)
   string_digits = integer.digits.map { |key| STRING_DIGITS[key]}

   string_digits.join.reverse
end

# Question 10: Convert a signed number to a string!

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then " -#{integer_to_string(-integer)}"
  when +1 then " +#{integer_to_string(integer)}"
  else           integer_to_string(integer)
  end
end
