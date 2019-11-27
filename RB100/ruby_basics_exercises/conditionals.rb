# Exercise 1: Unpredictable weather (Part 1)

sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts "The sun is so bright!"
end

puts sun


# Exercise 2: Unpredictable weather (Part 2)

sun = ['visible', 'hidden'].sample

puts sun
unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

# Exercise 3: Unpredictable weather (Part 3)

sun = ['visible', 'hidden'].sample

puts 'The sun is so bright!' if sun == 'visible'
puts 'The clouds are blocking the sun!' unless sun == 'visible

# Exercise 4: True of False

boolean = [true, false].sample

boolean ? puts("I'm true!") : puts("I'm false!")

# Exercise 5: Truthy number

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# Exercise 6: Stoplight (Part 1)

stoplight = ['green', 'yellow', 'red'].sample

puts stoplight

case stoplight
when 'green'
  puts "Go!"
when 'yellow'
  puts "Slow down!"
else
  puts "Stop!"
end

# Exercise 7: Stoplight (Part 2)

stoplight = ['green', 'yellow', 'red'].sample

puts stoplight

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

if stoplight == 'green'
  puts "Go!"
elsif stoplight == 'yellow'
  puts "Slow down!"
else
  puts "Stop!"
end

# Exercise 8: Sleep alert

status = ['awake', 'tired'].sample

# puts status

state = if status == 'awake'
         puts "Be productive!"
        else
         puts "Go to sleep!"
        end

puts state


# Exercise 9: Cool numbers

number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

# Exercise 10: Stoplight (Part 3)

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               rputs 'Stop!'
end
