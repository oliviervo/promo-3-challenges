require_relative "cookbook.rb"
require_relative "view.rb"

class Controller
    attr_accessor :cookbook

    def initialize(cookbook)
      # Here you should instantiate the Cookbook model with the file
    @cookbook = Cookbook.new("/home/olivier/code/oliviervo/promo-3-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/spec/recipes.csv")
    @view = View.new

    end

    def list
      @view.list_view(@cookbook.cookbook)
    end

    def create
       view_create = @view.create_view
      @cookbook.add_recipe(view_create)
    end

    def destroy
      view_remove = @view.remove_view
      @cookbook.remove_recipe(view_remove)
    end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
end
