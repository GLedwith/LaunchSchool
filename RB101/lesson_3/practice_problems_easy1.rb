# Question 1:

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers # => [1, 2, 2, 3]

# Question 3:

advice = 'Few things in life are as important as house training your pet dinosaur.'

advice.sub!('important', 'urgent')

# Question 5:

p (10...100).cover?(42)  # => true
p (10...100).member?(42) # => true

# Question 6:

famous_words = 'seven years ago...'
more_famous_words = 'Four score and'

puts more_famous_words + ' ' + famous_words

puts "#{more_famous_words} #{famous_words}"

# Question 7:

flintstones = ['Fred', 'Wilma']
flintstones << ['Barney', 'Betty']
flintstones << ['BamBam', 'Pebbles']

p flintstones.flatten!

# Question 8:

flintstones = { 'Fred' => 0, 'Wilma' => 1, 'Barney' => 2, 'Betty' => 3, 'BamBam' => 4, 'Pebbles' => 5 }

p flintstones.assoc('Barney')
