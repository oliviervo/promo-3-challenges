require 'csv'
require_relative "controller"
require_relative "cookbook"
require_relative "router"

class View

  def list_view(recipes)
      recipes.each_with_index{|item, index| puts "#{index} - #{item.name}, #{item.description}"}
    end

  def create_view_name
    puts "Saisir un nom de recette : "
    return gets.chomp
  end

  def create_view_description
    puts "Saisir une description associée : "
    return gets.chomp
  end

   def remove_view
    puts "Saisir l'index de la recette à supprimer : "
    return gets.chomp.to_i
  end


end