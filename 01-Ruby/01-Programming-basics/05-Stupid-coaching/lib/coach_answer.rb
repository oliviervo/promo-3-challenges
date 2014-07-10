def coach_answer(mon_message)
  if mon_message.include?("?")
    return "Silly question, get dressed and go to work !"

  elsif mon_message=="I am going to work right now SIR !"
    return ""

    else mon_message !=mon_message.include?("?")
      return "I don't care son, get dressed and go to work !"


  end
end

def coach_answer_enhanced(mon_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
  if mon_message.include? ("jamais")
    puts "#{coach_answer}, allez!"

  end
end


