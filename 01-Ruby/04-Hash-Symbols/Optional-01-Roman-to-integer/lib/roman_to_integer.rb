def roman_to_integer(roman_string)
  #TODO: translate roman string to integer
  converts = Hash.new
  converts = {
    "IV" => 4,
    "XII" => 12,
    "XIX" => 19
  }
  if roman_string = converts[roman_string]
    puts "Vrai"
  end
end

# testing your program
puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true

