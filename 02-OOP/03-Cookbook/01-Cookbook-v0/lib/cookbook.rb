require 'csv'
require_relative "recipe.rb"
require_relative "controller.rb"

class Cookbook
  attr_accessor :cookbook, :csv_file
  attr_reader :filename

 def initialize(csv_file)
    @cookbook = []
    #@filename = "/home/olivier/code/oliviervo/promo-3-challenges/02-OOP/03-Cookbook/01-Cookbook-v0
  #/lib/recipes.csv"
    @csv_file = csv_file
    load_csv
  end

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @cookbook << row[0]
    end
  end

  def create(recipe)
    @cookbook << recipe
    save
  end

  def remove(recipe_id)
    @cookbook.delete_at(recipe_id)
    save
  end

  def save
    CSV.open(@filename, "w") do |csv|
      @cookbook.each do |recipe|
      csv << [recipe]
        end
      end
  end

end




