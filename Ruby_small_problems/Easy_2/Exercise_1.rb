age = rand(20..200)
puts "Please enter your name:"
name = gets.chomp

def name_and_age(name, age)
  if name.empty?
    puts "Teddy is #{age} years old!"
  else
    puts "#{name} is #{age} years old!"
  end
end

name_and_age(name, age)
