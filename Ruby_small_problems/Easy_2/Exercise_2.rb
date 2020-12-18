SQ_FEET = 10.7639

# puts "Enter the length of the room in meters:"
# length_in_meters = gets.chomp.to_f
#
# puts "Enter the width of the room in meters:"
# width_of_room = gets.chomp.to_f
#
# square_meters = (length_in_meters * width_of_room).round(2)
# square_foot = (square_meters * SQ_FEET).round(2)
#
# puts "The area of the room is #{square_meters} square meters #{square_foot} square feet "

# further exploration:

puts "Enter the length of the room in feet:"
length_in_feet = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width_in_feet = gets.chomp.to_f

square_feet = (length_in_feet * width_in_feet).round(2)
square_inches = (square_feet * 144).round(2)
square_centimeters = (square_inches * 929.03).round(2)

puts "The area of the room is #{square_feet} square feet, and #{square_inches} square inches, and #{square_centimeters} square centimeters!"
