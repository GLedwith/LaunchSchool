# Car loan calculator:
# p = loan amount
# j = monthly interst rate
# n = loan duration in months

require 'yaml'
MESSAGES = YAML.load_file('car_loan_calculator_config.yml')

MONTHS_IN_YEAR = 12

def clear
  system('clear') || system('cls')
end

def prompt(message)
  puts(">> #{message}")
end

def valid_number?(input)
  input.to_f.to_s == input || input.to_f > 0
end

def valid_years?(input)
  input.to_i.to_s == input && input.to_i > 0
end

def valid_another_calculation_answer?(choice)
  %w(y n).include?(choice)
end

def another_calculation?(choice)
  choice == 'y' || choice == 'yes'
end

def payment_months(p, j, n)
  p.to_f * (j / (1 - (1 + j)**(-n)))
end

prompt(MESSAGES['welcome'])

first_name = nil

loop do
  prompt(MESSAGES['first_name'])
  first_name = gets.chomp

  first_name.empty? ? prompt(MESSAGES['valid_name']) : break
end

prompt("Hi #{first_name}!")

loop do #------------------Main loop---------------------
  p = nil
  loop do
    prompt(MESSAGES['loan_amount'])
    p = gets.chomp

    break if valid_number?(p)
    prompt(MESSAGES['invalid_input'])
  end

  anual_interest_rate = nil

  loop do
    prompt(MESSAGES['interest_rate'])
    prompt(MESSAGES['interest_rate_example'])
    anual_interest_rate = gets.chomp

    break if valid_number?(anual_interest_rate)
    prompt(MESSAGES['invalid_input'])
  end

  loan_duration_years = nil

  loop do
    prompt(MESSAGES['loan_years'])
    loan_duration_years = gets.chomp

    break if valid_years?(loan_duration_years)
    prompt(MESSAGES['invalid_entry'])
  end

  j = anual_interest_rate.to_f / MONTHS_IN_YEAR # j = monthly interese rate
  n = loan_duration_years.to_i * MONTHS_IN_YEAR # n = loan duration in months
  clear
  prompt("Your monthly payment is $#{format('%0.2f', payment_months(p, j, n))}")

  prompt(MESSAGES['another_calc'])
  choice = gets.chomp.downcase
  clear
  break unless another_calculation?(choice)
end

prompt(MESSAGES['thank_you'])
