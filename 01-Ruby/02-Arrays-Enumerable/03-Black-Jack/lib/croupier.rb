require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
score=0
bank=16

return asking_for_card?(score)


end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
puts "your score is #{score}, bank is #{bank}"

end

def asking_for_card?(score)
if score<=21
  puts "Card ? (type 'Y' or 'yes' for a new card)"
  choix=gets.chomp

end

if choix=='Y' || choix=='yes'
  score=score+ pick_card
  state_of_the_game(score, bank)

else
  state_of_the_game(score, bank)


end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
while
if outcome[bank]>outcome[score]
  puts "Vous avez perdu"

elsif outcome[bank]<outcome[score]
  puts "Vous avez gagné"

else
  puts "match nul"

end
