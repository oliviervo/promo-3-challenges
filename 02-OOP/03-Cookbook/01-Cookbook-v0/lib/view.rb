require_relative "controller.rb"
require_relative "recipe.rb"
require_relative "cookbook.rb"

class View
  attr_reader :cookbook

  def list_view(cookbook)
      cookbook_db.each_with_index{|item, index| puts "#{index} - #{item}"}
    end

  def create_view
    puts "Saisir un nom de recette : "
    return gets.chomp
  end

   def remove_view
    puts "Saisir l'index de la recette à supprimer : "
    return gets.chomp.to_i
  end


end