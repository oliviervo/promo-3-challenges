require 'csv'

class Cookbook
  attr_accessor :cookbook
  attr_reader :filename

 def initialize
    @cookbook = []
    @filename = "/home/olivier/code/oliviervo/promo-3-challenges/02-OOP/03-Cookbook/01-Cookbook-v0
  /lib/recipes.csv"
    load_csv
  end

  def load_csv
    CSV.foreach(@filename) do |row|
      @cookbook << row[0]
    end
  end

  def display
    @cookbook
  end

  def create_recipe(recipe)
    @cookbook << recipe
    save
  end

  def destroy_recipe(index)
    @cookbook.delete_at(index)
    save
  end

  def exit_user
    puts "fin du programme"
  end

  def save
    CSV.open(@filename, "w") do |csv|
      @cookbook.each do |recipe|
      csv << [recipe]
        end
      end
  end

end
create_recipe("chicken")
create_recipe("burger")
destroy_recipe(4)





