require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts 'Seeding database...'
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)
User.create(name: Faker::name, email: Faker::Internet.email)


10.times do |x| User.create(name: Faker::name, email: Faker::Internet.email)
end


# TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users


require 'nokogiri'
require 'open-uri'


class SearchRecipe

  def enter_keyword
    puts "Enter un keyword to find a recipe :"
    keyword = gets.chomp
    return keyword
  end

  def search_recipe_keyword
    keyword = self.enter_keyword
    doc = Nokogiri::HTML(open("https://news.ycombinator.com/"))

    posts = {}
    ratings = []

    doc.search('title').each do |element|
      url = element.content[/url : (((ftp|https?):\/\/)(www\.)?|www\.)([\da-z-_\.]+)([a-z\.]{2,7})([\/\w\.-_\?\&]*)*\/?, 1]
      duree_cuisson = element.content[/Cuisson : (\d+) min/, 1]
      intro_description = element.content[/Préparation :(.+)/]

      puts element.search('.m_search_titre_recette > a').inner_text
      puts "Rating : #{element.search('.etoile1').size} / 5"
      puts "Préparation : #{duree_preparation}"
      puts "Cuisson : #{duree_cuisson}"
      puts "Description : #{intro_description[0..150]}..."
    end
  end

end

search = SearchRecipe.new
# on vient de créer l'instance "search" définie par la classe d'objet "SearchRecipe"

search.search_recipe_keyword
# et là, on demande à notre instance de répondre au message (//méthode) envoyé


  # puts doc


# class Crawl

#   def search(element.search)
#     doc = Nokogiri::HTML(File.open('marmiton.html'))

#      doc.search('.m_search_result').each do |element|
#        puts "#{element.search('.m_search_titre_recette > a').inner_text}"
#        puts "Rating : #{element.search('.etoile1').size} / 5}"
#     end
#   end

# end

# Crawl.new

# puts search("tomate")


# Try to enhance this small program to extract more recipe's info from the HTML file as :

# the cooking and preparation lengths (as 2 integers representing the number of minutes respectively for cooking and preparing)
  # Préparation : 20 min Cuisson : 5 min => ce qui commence par le mot "Préparation : " et se termine par " min".

# the description summary : a string of, let's say, the first 150 characters of the given description

# the number of votes on which the rating is based