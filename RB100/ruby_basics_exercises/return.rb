# Exercise 1: Breakfast, Lunch, or Dinner (part 1)

def meal
  return 'Breakfast'
end

puts meal

# Exercise 2: Breakfast, Lunch, or dinner? (Part 2)

def meal
  'Evening'
end

puts meal

# Exercise 3: Breakfast, Lunch, or Dinner? (Part 3)

def meal
 return 'Breakfast'
  'Dinner'
end

puts meal

# Exercise 4: Breakfast, Lunch, or Dinner? (Part 4)

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# Exercise 5: Breakfast, Lunch, or Dinner? (Part 5)

def meal
 'Dinner'
 puts 'Dinner'
end

p meal

# Exercise 6: Breakfast, Lunch, or Dinner? (Part 6)

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# Exercise 7: Counting Sheep (Part 1)

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# Exercise 8: Counting Sheep (Part 2)

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# Exercise 9: Counting Sheep (Part 3)

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# Exercise 10: Tricky Number

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
