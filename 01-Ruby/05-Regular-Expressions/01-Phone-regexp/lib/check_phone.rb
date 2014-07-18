def french_phone_number?(phone_number)
  # TODO: true or false?
    phone_number =~ /^(0|\+33)[1-9]\d{8}$/ #/(0)\d{9}|(0)\d(\s\d{2}){4}|\+33\s\d(\s\d{2}){4}|(0)\d(\-\d{2}){4}/
end
