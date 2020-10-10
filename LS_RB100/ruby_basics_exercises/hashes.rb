# Exercise 1: First Car

car = {
  type: "sedan",
  color: "blue",
  milage: 80_000
}

# Exercise 2: Adding the year

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car[:year] = 2003

p car

# Exercise 3: Broken odometer

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)

p car

# Exercise 4: What color?

car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car.fetch(:color)

# Exercise 5: Labeled Numbers

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, value|
  puts "A #{key} number is #{value}"

end

# Exercise 6: Divided by two

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers =  numbers.map { |key, value| value / 2  }

p half_numbers

# Exercise 7: Low, meduim, high?

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select {|key, value| value < 25}

p low_numbers

# Exercise 8: Low or Nothing

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

# Exercise 9: Multiiple Cars
 {
    car:  { type: "sedan", color: "blue", year: 2003 },

    truck: { type: "pickup", color: 'red', year: 1998 }
}

# Exercise 10: which collection?

car = [[type: 'sedan'], [color: 'blue'], [year: 2003]]

p car
