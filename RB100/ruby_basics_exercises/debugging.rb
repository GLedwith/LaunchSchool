# Exercise 1: Reading Error Messages

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among([0, 0, 1, 0, 2, 0])
find_first_nonzero_among([1])

# Exercise 2: Weather forecast

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end


p predict_weather

# Exercise 3: Multiply by five

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

# Exercise 4: Pets

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog].push('bowser')


# Exercise 5: Even Numbers

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
   n.even?
end

p even_numbers # expected output: [2, 6, 8]

# Exercise 6: Confucuis says

def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if  person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'

  end

  if person == 'Confucius'
  'I hear and I forget. I see and I remember. I do and I understand.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

puts 'Yoda says:'
puts '"' + get_quote('Yoda') + '"'

puts 'Einstein says:'
puts '"' + get_quote('Einstein') + '"'


def get_quote(person)
  if person == 'Yoda'
    return "'Do. Or do not. There is no try.'"
  elsif person == 'Einstein'
    return "Do not worry about your difficulties in Mathematics. I can assure you mine are still greater."
  elsif person == 'Confucius'
    return "I hear and I forget. I see and I remember. I do and I understand."
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

puts 'Yoda says:'
puts '"' + get_quote('Yoda') + '"'

puts 'Einstein says:'
puts '"' + get_quote('Einstein') + '"'

# Exercise 7: Account Balance

Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

puts calculate_balance(january)
puts calculate_balance(february)
puts calculate_balance(march)

puts calculate_balance({income: [], expenses: []}) == 0
puts calculate_balance({income: [100], expenses: []}) == 100
puts calculate_balance({income: [50], expenses: [30]}) == 20
puts calculate_balance({income: [100], expenses: [110]}) == -10


# Exercise 8: Colorful things

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# Exercise 9: Digital Product

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
expected return value: 120
actual return value: 0

# Exercise 10: Warriors and Wizards

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts player
