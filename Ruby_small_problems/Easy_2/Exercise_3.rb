puts "What is the bill?"
bill = gets.chomp.to_i

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_i

tip = (bill / 100) * tip_percent

total = tip + bill

puts "The tip is #{tip}"
puts "The total is #{total}"

# further exploration:
