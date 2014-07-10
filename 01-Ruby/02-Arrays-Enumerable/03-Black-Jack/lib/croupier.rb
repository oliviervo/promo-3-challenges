require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  score = 0
  bank = bank_score

  while asking_for_card?(score)
    score = score + pick_card
    puts state_of_the_game(score, bank)
  end
  outcome = [bank, score]
  build_message_for(outcome)
end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  "Your score is #{score}, bank is #{bank}!"
end

def asking_for_card?(score)
  if score <= 21
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    choix = gets.chomp
    choix == 'Y' || choix == 'yes'
  end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[1] == 21
    return "Black Jack!"
  elsif outcome[1] > 21
    return "You are over 21... you loose."
  elsif outcome[0] > outcome[1]
    return "Bank beats you! You loose."
  elsif outcome[1] > outcome[0]
    return "You beat the bank! You win."
    else "bim!"
  end
end
