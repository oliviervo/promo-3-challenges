class Restaurant
attr_accessor :average_rating, :city, :name, :address,:restaurants
  #TODO add relevant accessors if necessary

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_array = []
    @average_rating = 0
    @address = address

  end

  #TODO: implement #filter_by_city and #rate methods
  def rate(user_rate)
    @average_array << user_rate.to_f
    @average_rating = @average_array.inject(:+) / @average_array.size
  end

  def self.filter_by_city(restaurants, city)
    restaurants_array = []
    restaurants.each do|restaurant|
      if restaurant.city == city
         restaurants_array << restaurant
      end
    end
    restaurants_array
  end

end
