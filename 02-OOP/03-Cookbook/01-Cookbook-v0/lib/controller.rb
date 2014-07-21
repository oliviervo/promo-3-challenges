require_relative "cookbook"
require_relative "view"
require_relative "recipe"

class Controller

    def initialize(cookbook)
      # Here you should instantiate the Cookbook model with the file
    @cookbook = cookbook
    @view = View.new

    end

    def list
      @view.list_view(@cookbook.recipes)
    end

    def create
      name = @view.create_view_name
      description = @view.create_view_description
      new_recipe = Recipe.new(name,description)
      #@cookbook.add_recipe(Recipe.new(new_recipe[0], new_recipe[1]))
      @cookbook.add_recipe(new_recipe)
    end

    def destroy
      view_remove = @view.remove_view
      @cookbook.remove_recipe(view_remove)
    end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
end
