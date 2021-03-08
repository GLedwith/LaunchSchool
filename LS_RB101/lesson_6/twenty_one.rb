WIDTH = 5
HEIGHT = 1
WHITE_SPACES = " "
LINE = "─"
GAME_WIN_NUM = 21
DEALER_MIN_HIT = 17
ROUNDS_TO_WIN = 3
INITIAL_DELT_CARDS = 2
DELT_CARDS = 1

SUITS = %w(♣ ♦ ♥ ♠)
CARDS = %w(2 3 4 5 6 7 8 9 10 J Q K A)

def clear
  system('clear') || system('cls')
end

def prompt(message)
  puts "=> #{message}"
end

def blank_line
  puts
end

def continue
  prompt "Press return to continue..."
  gets.chomp
end

def display_greeting
  prompt "Welcome to the terminal casino"
  prompt "Let's play our hottest game: Twenty One"
  prompt "First to 3 rounds wins the game!"
  blank_line
  continue
end

def deal_cards(deck, num)
  deck.shuffle!.pop(num)
end

def hide_dealer_card!(dealer_cards)
  dealer_cards.insert(1, ['?', '?'])
  dealer_cards.pop
end

def display_player_cards(player_card_sections, player_total)
  clear
  prompt "Players cards:"
  display_card_sections(player_card_sections)
  prompt "Player total: #{player_total}"
end

def display_dealer_cards(dealer_card_sections)
  prompt "Dealer cards:"
  display_card_sections(dealer_card_sections)
end

def valid_choice
  answer = ''
  loop do
    prompt "Please Choose to (H)it or (S)tay"
    answer = gets.chomp.downcase

    break if %w(hit h stay s).include?(answer)
    prompt "Invalid answer, choose '(H)it' or '(S)tay'"
  end
  answer
end

def player_turn(deck, player_cards)
  clear
  player_cards << deal_cards(deck, DELT_CARDS).flatten
  prompt "Player choose to hit..."
  sleep(1)
  prompt "Player cards:"
  player_card_sections = store_card_sections(player_cards)
  display_card_sections(player_card_sections)
end

def player_choice(deck, player_cards, dealer_card_sections)
  loop do
    player_choice = valid_choice

    if %w(hit h).include?(player_choice)
      player_turn(deck, player_cards)
      prompt "Player total: #{total(player_cards)}"
      blank_line
      display_dealer_cards(dealer_card_sections)
    end
    player_total = total(player_cards)
    break if %w(stay s).include?(player_choice) || busted?(player_total)
  end
end

def player_stays(player_total)
  prompt "Player stays at #{player_total}"
end

def dealers_turn(dealer_cards, last_dealer_card)
  prompt "Dealers turn..."
  dealer_cards << last_dealer_card
  sleep(1.2)
end

def dealer_hits(dealer_cards, deck)
  loop do
    break if total(dealer_cards) >= DEALER_MIN_HIT
    dealer_cards << deal_cards(deck, DELT_CARDS).flatten
  end
end

def evaluate_aces(overall_sum, player_cards)
  aces_arr = []
  player_cards.each do |card|
    aces_arr << card if card[0] == "A"
  end

  aces_arr.each do |_|
    if overall_sum > GAME_WIN_NUM
      overall_sum -= 10
    end
  end

  overall_sum
end

def total(player_cards)
  total = []

  player_cards.each do |card|
    total << card[0].to_i
    if card[0] == 'J' || card[0] == 'Q' || card[0] == 'K'
      total << 10
    elsif card[0] == 'A'
      total << 11
    end
  end

  overall_sum = total.sum
  evaluate_aces(overall_sum, player_cards)
end

def busted?(sum)
  sum > GAME_WIN_NUM
end

def create_card_sections(card)
  card_top = "┌#{LINE * WIDTH}┐"
  card_value = "│ #{card[0].ljust(WIDTH - 1)}│"
  card_middle = ["│#{WHITE_SPACES * WIDTH}│"] * HEIGHT
  card_suit = "│#{card[1].rjust(WIDTH - 1)} │"
  card_bottom = "└#{LINE * WIDTH}┘"

  [card_top, card_value, card_middle, card_suit, card_bottom].flatten
end

def store_card_sections(arr)
  section_arr = []

  arr.each do |card|
    section_arr << create_card_sections(card)
  end
  section_arr
end

def display_card_sections(sections_arr)
  nested_arr = []
  sections_arr.first.size.times { |_| nested_arr << [] }

  sections_arr.each do |section|
    section.each_with_index do |ele, index|
      nested_arr[index] << ele
    end
  end

  nested_arr.size.times { |index| puts nested_arr[index].join(' ') }
end

def display_all_cards(player_cards, dealer_cards, player_total, dealer_total)
  player_card_sections = store_card_sections(player_cards)

  display_player_cards(player_card_sections, player_total)

  dealer_cards.delete_at(1)
  dealer_card_sections = store_card_sections(dealer_cards)
  blank_line
  display_dealer_cards(dealer_card_sections)
  prompt "Dealer total: #{dealer_total}"
end

def display_round_results(player_total, dealer_total)
  if player_total > GAME_WIN_NUM
    prompt 'Player bust, Dealer wins this round'
  elsif dealer_total > GAME_WIN_NUM
    prompt 'Dealer bust, Player wins this round'
  elsif dealer_total < player_total
    prompt 'Player wins this round'
  elsif dealer_total > player_total
    prompt 'Dealer wins this round'
  else
    prompt 'Round is a tie'
  end
end

def update_score(score, player_total, dealer_total)
  if player_total > GAME_WIN_NUM
    score[:dealer] += 1
  elsif dealer_total > GAME_WIN_NUM
    score[:player] += 1
  elsif player_total > dealer_total
    score[:player] += 1
  elsif dealer_total > player_total
    score[:dealer] += 1
  end
end

def display_score(score)
  prompt "Player score: #{score[:player]} | Dealer score: #{score[:dealer]}"
end

def overall_winner?(score)
  score[:player] == ROUNDS_TO_WIN || score[:dealer] == ROUNDS_TO_WIN
end

def display_grand_winner(score)
  if score[:player] == ROUNDS_TO_WIN
    prompt "Congratulations, you are the grand winner!"
  elsif score[:dealer] == ROUNDS_TO_WIN
    prompt "Sorry you lost the game, better luck next time!"
  end
end

def play_again
  answer = ''
  loop do
    prompt "Would you like to play again? (y / n)"
    answer = gets.chomp.downcase
    break if %w(y yes n no).include?(answer)
    prompt "That's an invalid answer, please enter (y or n)"
  end
  answer
end

def display_goodbye_message
  prompt "Thank you for playing Twenty One, Goodbye!"
end

# === end of methods ===

clear
display_greeting

loop do # === main game loop ===
  score = { player: 0, dealer: 0 }

  loop do
    deck = CARDS.product(SUITS)
    player_cards = deal_cards(deck, INITIAL_DELT_CARDS)

    dealer_cards = deal_cards(deck, INITIAL_DELT_CARDS)
    last_dealer_card = hide_dealer_card!(dealer_cards)

    player_total = total(player_cards)

    player_card_sections = store_card_sections(player_cards)
    dealer_card_sections = store_card_sections(dealer_cards)

    loop do
      display_player_cards(player_card_sections, player_total)
      blank_line
      display_dealer_cards(dealer_card_sections)

      player_choice(deck, player_cards, dealer_card_sections)
      player_total = total(player_cards)

      dealer_cards << last_dealer_card if busted?(player_total)
      break if busted?(player_total)

      player_stays(player_total)

      dealers_turn(dealer_cards, last_dealer_card)
      dealer_hits(dealer_cards, deck)

      break
    end

    dealer_total = total(dealer_cards)
    display_all_cards(player_cards, dealer_cards, player_total, dealer_total)
    blank_line
    display_round_results(player_total, dealer_total)
    blank_line
    update_score(score, player_total, dealer_total)
    display_score(score)
    blank_line

    break if overall_winner?(score)
    continue
    next
  end

  display_grand_winner(score)
  blank_line
  break if play_again.start_with?('n')
  clear
end
clear
display_goodbye_message
