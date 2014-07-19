require_relative "cookbook.rb"
require_relative "view.rb"

class Controller
    attr_accessor :cookbook
    attr_reader :recipe, :view

    def initialize
      # Here you should instantiate the Cookbook model with the file
    @cookbook = Cookbook.new
    @view = View.new

    end

    def list_recipe
      @view.list_view
    end

    def create_recipe
       view_create = @view.create_view
      @cookbook.create(view_create)
    end

    def destroy_recipe
      view_remove = @view.remove_view
      @cookbook.delete_at(view_remove)
    end


  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
end
