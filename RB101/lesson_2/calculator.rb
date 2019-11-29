# ask the user for two numbers
# ask the user for an operation to perform
# performs the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

Kernel.puts("Welcome to calculator!")

Kernel.puts("What's your first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's your second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What opertaion would you like to perofm? 1) add, 2) subtract, 3) multiply, 4) divide")
operation = Kernel.gets().chomp()

if operation == '1'
  result =  number1.to_i() + number2.to_i()
elsif operation == '2'
  result =  number1.to_i() - number2.to_i()
elsif operation == '3'
  result =  number1.to_i() * number2.to_i()
elsif operation == '4'
  result =  number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")
