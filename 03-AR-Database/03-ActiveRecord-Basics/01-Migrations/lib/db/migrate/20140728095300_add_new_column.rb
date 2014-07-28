class AddNewColumn < ActiveRecord::Migration
  def AddColumn
    # TODO: your code here to create the posts table
         add_column :rating, :integer
  end
end