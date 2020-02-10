# Practice problem 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Option 1

flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash

# Option 2

flintstones_hash = {}
counter = 0

loop do
  flintstones_hash[flintstones[counter]] = counter
 counter += 1
 break if counter == flintstones.size
end

p flintstones_hash


# Practice problem 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# OPtion 1

total_ages = 0
ages.each_value { |value| total_ages =  value += total_ages}
p total_ages

# Option 2

ages.values.inject(:+)

# Practice problem 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Option 1

ages.delete_if { |key, value| value >= 100}

# Option 2

p ages.keep_if { |key, value| value <= 100}

# Option 3

ages.select! { |key, value| value <= 100}

# Practice problem 4

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

 # Option 1

 [ages.min_by { |key, value| value}].to_h

 # Option 2

 p ages.values.min

 # Practice problem 5

 flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

 p flintstones.index { |name| name[0..1] == 'Be'}

 # Practice problem 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0..2]
end

# Practice problem 7

statement = "The Flintstones Rock"
results = {}

letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
 frequency_of_letters = statement.scan(letter).count
 results[letter] = frequency_of_letters if frequency_of_letters > 0
end

p results

# Practice problem 8

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Practice problem 9

words = "the flintstones rock"

p words.split(" ").each { |word| word.capitalize!}.join( " ")

p words.split.map { |word| word.capitalize }.join(" ")

# Practice problem 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details['age']
  when 0..17
    details['age_group'] = ['Kid']
  when 18..64
    details['age_group'] = ['Adult']
  else
    details['age_group'] = ['Senior']
  end
end
