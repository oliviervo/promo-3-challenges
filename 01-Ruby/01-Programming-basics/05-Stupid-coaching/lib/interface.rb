require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

def question

  puts "Posez une question au Coach : "
mon_message=gets.chomp
coach_answer(mon_message)

coach_answer_enhanced(mon_message)


until mon_message="I am going to work right now SIR !"

  puts "Posez une autre question au Coach : "
mon_message=gets.chomp
coach_answer(mon_message)

coach_answer_enhanced(mon_message)
 end

end

