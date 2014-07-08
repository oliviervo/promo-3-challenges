def coach_answer(mon_message)
  if mon_message.include? "?"
    puts "Silly question, get dressed and go to work "

  else
    puts"I don't care son, get dressed and go to work !"


  end
end

def coach_answer_enhanced(mon_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
  if mon_message.include? "jamais"
    puts "#{coach_answer}, dégonglé"

  end
end


