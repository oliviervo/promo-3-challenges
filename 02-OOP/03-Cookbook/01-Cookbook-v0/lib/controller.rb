require_relative 'cookbook.rb'
require_relative 'repo.rb'
require_relative 'ui.rb'
attr_accessor :cookbook

class Controller
    def initialize(file_name)
      # Here you should instantiate the Cookbook model with the file

    end

    def display_recipe
      @cookbook
    end

    def create_recipe(recipe_name)
      @cookbook << recipe_name
    end

    def destroy_recipe(recipe_name)
      @cookbook.delete(recipe_name)
    end

    def exit_user
      puts "fin du programme"
    end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
end
