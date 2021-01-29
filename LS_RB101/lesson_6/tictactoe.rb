INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
ROUNDS_TO_WIN = 3
SQUARES_IN_ROW = 3

score = { player: 0, computer: 0 }

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def clear
  system('clear') || system("cls")
end

def prompt(message)
  puts "=> #{message}"
end

def display_greeting
  prompt "Welcome to Tic, Tac, Toe!"
  prompt "The first to 3 rounds wins the game!"
  sleep(1.2)
end

def choose_who_goes_first
  choice = ''
  prompt "Choose who goes first: ('p' for Player, 'c' for Computer)"
  loop do
    choice = gets.chomp.downcase
    break if ['p', 'c'].include?(choice)
    prompt "Not a valid choice, enter 'p' for Player or 'c' for Computer"
  end
  choice == 'p' ? 'player' : 'computer'
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  prompt "Player is #{PLAYER_MARKER} | Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "      |      |"
  puts "  #{brd[1]}   |  #{brd[2]}   |  #{brd[3]}"
  puts "      |      |"
  puts "------+------+-----"
  puts "      |      |"
  puts "  #{brd[4]}   |  #{brd[5]}   |  #{brd[6]}"
  puts "      |      |"
  puts "------+------+-----"
  puts "      |      |"
  puts "  #{brd[7]}   |  #{brd[8]}   |  #{brd[9]}"
  puts "      |      |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }

  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, seperator=', ', conjunction='or')
  str = ''

  str_arr = arr.map(&:to_s)
  if str_arr.size == 1
    str << str_arr[0].to_s
  elsif str_arr.size == 2
    str << "#{str_arr[0]} #{conjunction} #{str_arr[-1]}"
  else
    str << str_arr[0...arr.size - 1].join(seperator)
    str << "#{seperator}#{conjunction} #{arr[-1]}"
  end
  str
end

def play_round(board, current_player)
  loop do
    display_board(board)
    place_piece!(current_player, board)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end
end

def valid_input(input)
  ['1', '2', '3', '4', '5', '6', '7', '8', '9'].any?(input)
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp
    valid_input(square)
    if valid_input(square)
      square = square.to_i
    end

    break if empty_squares(brd).include?(square)
    prompt "Sorry that is not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def find_winning_or_risky_square(line, brd, marker)
  if brd.fetch_values(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys[0]
  end
end

def offensive_or_defensive_ai(brd, square, marker)
  WINNING_LINES.each do |line|
    square = find_winning_or_risky_square(line, brd, marker)
    break if square
  end

  square
end

def choose_square_five(brd)
  return 5 if brd[5] == INITIAL_MARKER
end

def computer_places_piece!(brd)
  square = nil

  [COMPUTER_MARKER, PLAYER_MARKER].each do |marker|
    square = offensive_or_defensive_ai(brd, square, marker)
    break if square
  end

  if square.nil?
    middle_square = choose_square_five(brd)
    square = middle_square || square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def place_piece!(current_player, brd)
  if current_player == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  player == 'player' ? 'computer' : 'player'
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.fetch_values(*line).count(PLAYER_MARKER) == SQUARES_IN_ROW
      return "Player"
    elsif brd.fetch_values(*line).count(COMPUTER_MARKER) == SQUARES_IN_ROW
      return "Computer"
    end
  end
  nil
end

def update_score(brd, score)
  if detect_winner(brd) == 'Player'
    score[:player] += 1
  elsif detect_winner(brd) == 'Computer'
    score[:computer] += 1
  end
end

def display_score(score)
  prompt("Score: Player: #{score[:player]} | Computer: #{score[:computer]}")
end

def display_round_winner(board)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won this round!"
  else
    prompt "This round is a tie!"
  end
  sleep(2.5)
end

def overall_winner?(score)
  score[:player] == ROUNDS_TO_WIN || score[:computer] == ROUNDS_TO_WIN
end

def display_grand_winner(score)
  if score[:player] == ROUNDS_TO_WIN
    prompt "Congratulations, you are the grand winner!"
  elsif score[:computer] == ROUNDS_TO_WIN
    prompt "Sorry you lost the game, better luck next time!"
  end
end

def play_again?
  answer = ''
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break if %(y yes n no).include?(answer)
    prompt "Invalid answer, please enter (y or n)"
  end
  answer
end

def display_goodbye_message
  prompt "Thank you for playing Tic Tac Toe, Goodbye!"
end

# ================= End of methods ======================

display_greeting

loop do # ========== Main game loop ======================
  current_player = choose_who_goes_first
  score = { player: 0, computer: 0 }

  loop do
    board = initialize_board

    play_round(board, current_player)
    display_board(board)

    update_score(board, score)
    display_score(score)
    display_round_winner(board)

    break if overall_winner?(score)
  end

  display_grand_winner(score)

  break if play_again?.start_with?('n')
  clear
end
clear

display_goodbye_message
