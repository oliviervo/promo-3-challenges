# Encoding: utf-8
require 'csv'
require_relative "movies.rb"


 def most_successfull(number ,year ,file_name)
    csv_options = { col_sep: ',', encoding: "utf-8" }
     movies = []

     CSV.foreach(file_name, csv_options) do |row|
      movies = Movie.new(row[0], row[1].to_i, row[2].to_i)
      movies << movie
      end

    movies_before = movies_before_year(movies, year)
    movies_sorted = movies_selection_sorted(movies_before)
    result = pick_first(movies_sorted, number)

    return movies
  end

  def movies_before_year(movies, year)
    movies.select{|movie| movie.year < year}
  end

  def movies_selection_sorted(movies)
    movies.sort_by{|movie| -movie.earnings}
  end

  def pick_first(movies, number)
    movies.take(number).each{|movie| movie.name}
  end





