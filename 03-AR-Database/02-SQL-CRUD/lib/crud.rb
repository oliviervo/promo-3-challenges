require "sqlite3"


def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{CREATE TABLE IF NOT EXISTS posts
    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR(100),
      rating INTEGER(2),
      source VARCHAR (200),
      date DATETIME (20)
      )

  }  # %q allows for multiline string in ruby
  db.execute(sql)
end

def create_post(db, post)
  #TODO: add a new post to your db
  db.execute("INSERT INTO posts(name,source,date,rating)
  VALUES ('#{post[:name]}','#{post[:source_url]}', '#{post[:date]}', #{post[:rating]})")
  #(post[name:],post[rating:],post[source_url:],post[date:]);

end

def get_posts(db)
   #TODO: list all posts
   all_posts = db.execute("SELECT * FROM posts")
   p all_posts

end

def get_post(db, id)
  #TODO: get a specific post
  getpost = db.execute("SELECT * FROM posts WHERE id = #{id}")
  p getpost
end

def update_post(db, id, name)
	#TODO: update a post's name in your db
  updated_post = db.execute("UPDATE posts SET Name = '#{name}' WHERE id = #{id}")
  puts updated_post
end

def delete_posts(db)
  #TODO: delete a post in your db
  deletes_posts = db.execute("DELETE FROM posts")

end

def delete_post(db, id)
  #TODO: delete a specific post in your db
  db.execute("DELETE FROM posts WHERE id = #{id}")
end