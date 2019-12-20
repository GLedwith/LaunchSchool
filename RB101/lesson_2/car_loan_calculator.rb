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

def retrieve_loan_amount
  prompt(MESSAGES['loan_amount'])
  loop do
    amount = gets.chomp
    return amount if valid_number?(amount)
    prompt(MESSAGES['invalid_input'])
  end
end

def retrieve_interest_rate
  prompt(MESSAGES['interest_rate'])
  prompt(MESSAGES['interest_rate_example'])
  loop do
    interest_rate = gets.chomp
    return interest_rate if valid_number?(interest_rate)
    prompt(MESSAGES['invalid_input'])
  end
end

def retrieve_loan_duration_years
  prompt(MESSAGES['loan_years'])
  loop do
    loan_duration_years = gets.chomp
    return loan_duration_years if valid_years?(loan_duration_years)
    prompt(MESSAGES['invalid_entry'])
  end
end

def another_calculation?
  prompt(MESSAGES['another_calc'])
  answer = ''
  loop do
    answer = gets.chomp.downcase
    break if answer == 'y' || answer == 'n'
    prompt(MESSAGES['invalid'])
  end
  answer == 'y'
end

def monthly_payment(amount, monthly_int, loan_in_months)
  amount.to_i * (monthly_int / (1 - (1 + monthly_int)**(-loan_in_months)))
end

def retrieve_name
  prompt(MESSAGES['first_name'])
  loop do
    first_name = gets.chomp
    return first_name unless first_name.empty? || first_name.strip!
    prompt(MESSAGES['valid_name'])
  end
end

prompt(MESSAGES['welcome'])

prompt("Hi #{retrieve_name}!")

loop do #------------------Main loop---------------------
  amount = retrieve_loan_amount
  interest_rate = retrieve_interest_rate
  loan_duration_years = retrieve_loan_duration_years

  anual_interest_rate = interest_rate.to_f / 100
  monthly_int = anual_interest_rate.to_f / MONTHS_IN_YEAR
  loan_in_months = loan_duration_years.to_f * MONTHS_IN_YEAR

  clear
  puts "Your monthly payment is:"
  prompt"$#{monthly_payment(amount, monthly_int, loan_in_months).round(2)}"

  break unless another_calculation?
  clear
end

prompt(MESSAGES['thank_you'])
