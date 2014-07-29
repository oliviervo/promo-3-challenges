class User < ActiveRecord::Base
  # TODO: add associations to the Post model
  create_table :users do |t|
      t.string    :name
      t.string    :email
    end
  has_many :posts

end
