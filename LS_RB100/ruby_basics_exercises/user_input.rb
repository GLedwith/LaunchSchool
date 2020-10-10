# Exercise 1: Repeat after me

puts "Type anything you want: "
answer = gets.chomp

puts "You typed: #{answer}"

# Exercise 2: Your age in months

puts "What is your age in years? "
age_in_years = gets.chomp.to_i

age_in_months = 12 * age_in_years

puts "You are #{age_in_months} months old"


def years_to_months(age)
  puts "You are #{age * 12} months old!"
end

def years_to_weeks(age)
  puts "You are #{age * 52} weeks old!"
end


puts "What is your age in years? "
years_to_months(gets.chomp.to_i)

puts "What is your age in years? "
years_to_weeks(gets.chomp.to_i)

def years_to_days(age)
  puts "you are #{age * 365} days old!"
end

puts "What is your age in years? "
years_to_days(gets.chomp.to_i)

def years_to_hours(age)
  puts "You are #{age * 8760} hours old!"
end

puts "What is your age in years? "
years_to_hours(gets.chomp.to_i)

def years_to_minutes(age)
  puts "You are #{ age * 525600} minutes old!"
end


puts "What is your age in years? "
years_to_minutes(gets.chomp.to_i)

def years_to_seconds(age)
  puts "You are #{age * 31536000} seconds old!"
end


puts "What is your age in years? "
years_to_seconds(gets.chomp.to_i)

puts "What is your age in years? "

years_to_weeks(gets.chomp.to_i)

puts "What is your age in years? "

years_to_days(gets.chomp.to_i)

puts "What is your age in years? "

years_to_hours(gets.chomp.to_i)

puts "What is your age in years? "

years_to_minutes(gets.chomp.to_i)

puts "What is your age in years? "

years_to_seconds(gets.chomp.to_i)

# Exercise 3: Print something (part 1)

puts "Do you want me to print something (y/n)"
answer = gets.chomp.downcase

if answer == 'y'
  puts "something"
end

puts "something" if answer == "y"

 # Exercise 4: Print something (part 2)

puts "Do you want me to print something (y/n)"
answer = gets.chomp.downcase

if answer == 'y'
  puts "something"
elsif answer == 'n'
else
  puts "Invalid input! Please enter y or n "
end

choice = nil

loop do
  puts "Do you want me to print something (y/n)"
  choice = gets.chomp.downcase

  break if %w(y n).include?(choice)
  puts ">> Invalid input! please enter eiter y or n"
end

if choice == 'y'
 puts "something"
end

# Exercise 5: Launch School Printer (Part 1)

loop do
  puts ">> How many output lines do you want? Enter a number >= 3: "
  answer = gets.chomp.to_i

  if answer >= 3
    answer.times do
     puts "Launch School is the best!"
   end
   break
  else
    puts "That's not enough lines. Enter a number >= 3:"
  end
end

number_of_lines = nil

loop do
  puts ">> How many output lines do you want? Enter a number <= 3: "
  number_of_lines = gets.chomp.to_i
  break if number_of_lines >= 3
  puts ">>That's not enough lines!"
end



number_of_lines.times do
puts "Launch School is the best!"
end

number_of_lines.times {puts "Launch School is the best!"}

# Exercise 6: Passwords

USERNAME = "Garry"
PASSWORD = "LETmein"

loop do

  puts ">> Please enter your username:"
  username_try = gets.chomp.downcase

  puts ">> Please enter your password:"
  password_try = gets.chomp

  break if username_try = USERNAME && password_try == PASSWORD
  puts ">> Ivalid username or password, plesae try again: "
end

  puts "Welcome"

  # Exercise 7: Name and Password

  HASH =  {username: "admin", password: "letmein"}
  attempt = {} #password attempts stored here; see lines

  loop do
    puts "Enter your username: "
    attempt[:username] = gets.chomp.downcase # username is not case sensitive
    puts "Enter your password:"
    attempt[:password] = gets.chomp

    break if attempt == HASH
    puts "Invalid credentials, please try again!"
  end

  puts "Welcome, #{HASH[:username]}!"

HASH = {username: "admin", password: "letmein"}
login_trys = {}


loop do
  puts "Enter your username:"
  login_trys[:username] = gets.chomp.downcase

  puts "Enter your password:"
  login_trys[:password] = gets.chomp

  break if login_trys == HASH
  puts "Invalid credentials, please try again!"
end

puts "Weccome, #{HASH[:username]}"

# Exercise 8: Dividing numbers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
#
numerator = nil
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end

denominator= nil
loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp

    if denominator == '0'
      puts ">> Invalid input. A denominator of 0 is not allowed."
    else
    break if valid_number?(denominator)
    puts ">> Invalid input. Only integers are allowed."
  end
end

results = numerator.to_i / denominator.to_i
puts  results

numerator = nil
loop do
  puts ">> Please enter your numerator:"
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers allowed."
end

denominator = nil
loop do
  puts ">> Please enter your denominator:"
  denominator = gets.chomp

  if denominator == '0'
    puts "Invalid input. A denominator of 0 is not allowed."
  else
    break if valid_number?(denominator)
    puts ">> Invalid input. Only integers are allowed."
  end
end

result = numerator.to_i * denominator.to_i
puts " #{numerator} * #{denominator} is #{result}"


# Exercise 9: Launch School Printer (Part 2)

loop do
  input_string = nil
  number_of_lines = nil
  loop do
    puts ">> How many output lines do you want?" \
          " Enter a number >= 3 (Q to quit): "
          input_string = gets.chomp.downcase
          break if input_string == 'q'



    number_of_lines = input_string.to_i

    break if number_of_lines >= 3
    puts ">>That's not enough lines!"
  end

  break if input_string == 'q'
  while number_of_lines > 0
    puts "Launch School is the best!"
    number_of_lines -= 1
  end
end

# Exercise 10: Opposites Attract 

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts ">> Please enter a positive or negative integer: "
    number = gets.chomp
     return number.to_i if valid_number?(number)
    puts "Invalid input. Only non-zero integers are allowed."
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number > 0
  puts ">> Sorry. One integer must be positive and one negative."
  puts ">> Please start over."
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} is #{sum}"
