require 'csv'
require 'nokogiri'
require_relative "recipe"
require_relative "controller"
require_relative "view"

class Cookbook
  attr_reader :recipes

 def initialize(csv_file)
    @recipes = []
    @filepath = csv_file
    load_csv(@filepath)
    @imported_menu = marmiton.html
  end

  def load_csv(file)
    CSV.foreach(file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def parse_marmiton(name)

  doc = Nokogiri::HTML(File.open('marmiton.html'))
  doc.search('name').each do |element|
      puts "#{element.search('name').inner_text}"
    end
  end

  def save
    CSV.open(@filepath, 'w') do |csv|
      @recipes.each do |recipe|
      csv << [recipe.name, recipe.description]
        end
      end
  end

  def recipes
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    save
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    save
  end



end



