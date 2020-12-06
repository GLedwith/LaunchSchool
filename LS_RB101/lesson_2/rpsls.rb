ROUNDS_TO_WIN = 5

VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

WINNING_SCENARIOS = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(spock paper),
  'spock' => %w(scissors rock)
}

GAME_RULES = <<-MSG
 Game Rules:

  Scissors cuts paper, paper covers rock,
  rock crushes lizard, lizard poisons spock
  spock smashes scissors, scissors decapitates lizard,
  lizard eats paper, paper disproves
  spock, spock vaporizes rock,
  and as it always has, rock crushes scissors.

=> First to 5 wins is the grand winner!

MSG

def clear
  system('clear') || system('cls')
end

def pause(time = 0.75)
  sleep(time)
end

def prompt(message)
  puts("=> #{message}")
end

def display_greeting
  prompt("Welcome to rock, paper, scissors, lizard, spock")
  prompt(GAME_RULES)
end

def valid_name?(str)
  /^\w+/.match(str)
end

def retrieve_name
  prompt("Please enter your name:")
  name = ''
  loop do
    name = gets.chomp
    break if valid_name?(name)
    prompt("Please Enter a valid name to continue")
  end
  name
end

def retreive_player_choice
  prompt("Please choose one of the following:")
  prompt("r for rock, p for paper, sc for scissors, l for lizard, sp for spock")
  loop do
    player_choice = gets.chomp.downcase
    return VALID_CHOICES[player_choice] if VALID_CHOICES.key?(player_choice)
    prompt("Invalid choice, try again!")
  end
end

def retreive_computer_choice
  VALID_CHOICES[VALID_CHOICES.keys.sample]
end

def play_each_round(round)
  prompt("Let's play round #{round}...")
  pause
  player_choice = retreive_player_choice
  computer_choice = retreive_computer_choice

  clear

  prompt("You chose #{player_choice} and the computer chose #{computer_choice}")

  round_winner(player_choice, computer_choice)
end

def round_winner(player, computer)
  if WINNING_SCENARIOS[player].include?(computer)
    "You win!"
  elsif WINNING_SCENARIOS[computer].include?(player)
    "You loose!"
  else "it's a tie!"
  end
end

def update_score(winner_of_round, score)
  if winner_of_round == "You win!"
    score[:player] += 1
  elsif winner_of_round == "You loose!"
    score[:computer] += 1
  end
end

def display_score(score)
  prompt("Your score: #{score[:player]} | Computer score: #{score[:computer]}")
end

def overall_winner?(score)
  score[:player] == ROUNDS_TO_WIN || score[:computer] == ROUNDS_TO_WIN
end

def display_grand_winner(score)
  if score[:player] == ROUNDS_TO_WIN
    prompt("Congratulations, you are the grand winner!")
  else
    prompt("Sorry, you lost! Computer is the grand winner!")
  end
end

def play_again?
  prompt("Do you want to play again? 'y' to play again, 'n' to quit")
  answer = ''
  loop do
    answer = gets.chomp
    break if answer == 'y' || answer == 'n'
    prompt("Invalid response, please enter 'y' to play again or 'n' to quit.")
  end
  answer == 'y'
end

def display_goodbye
  prompt("Thank you for playing, goodbye!")
end

# ================ End of methods ======================

display_greeting
prompt("Hi #{retrieve_name}, are you ready for battle?")

score = { player: 0, computer: 0 }
round = 1

loop do # ================== main loop =================
  loop do
    winner_of_round = play_each_round(round)
    prompt(winner_of_round)
    update_score(winner_of_round, score)
    display_score(score)
    break if overall_winner?(score)
    round += 1
  end

  pause
  display_grand_winner(score)

  break unless play_again?

  score = { player: 0, computer: 0 }
  round = 1
  clear
end

display_goodbye
