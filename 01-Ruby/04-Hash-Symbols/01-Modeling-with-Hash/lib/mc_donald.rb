def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  burger_list = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese"=> 130
  }

  side_list = {
    "French fries" => 130,
    "Potatoes" => 130
  }

  beverage_list = {
    "Coca" => 160,
    "Sprite" => 170
  }

  return burger_list[burger] + side_list[side] + beverage_list[beverage]
end
poor_calories_counter("Big Mac", "Potatoes", "Coca")




def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
sum_cal = 0
 list = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese"=> 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170
  }

  happy_Meal = {
    "Cheese Burger" => 290,
    "French fries" => 130,
    "Coca" => 160
  }

  best_Of_Big_Mac = {
      "Big Mac" => 300,
      "French fries" => 130,
      "Coca" => 160
  }

  best_Of_Royal_Cheese = {
      "Royal Cheese"=> 130,
      "Potatoes" => 130,
      "Sprite" => 170
  }



  happy_meal_calories = happy_Meal["Cheese Burger"] + happy_Meal["French fries"] + happy_Meal["Coca"]
  best_Of_Big_Mac_calories = best_Of_Big_Mac["Big Mac"] + best_Of_Big_Mac["French fries"] + best_Of_Big_Mac["Coca"]
  best_Of_Royal_Cheese_calories = best_Of_Royal_Cheese["Royal Cheese"] + best_Of_Royal_Cheese["Potatoes"] + best_Of_Royal_Cheese["Sprite"]


    list["Happy Meal"] = happy_meal_calories
    list["Best Of Big Mac"] =  best_Of_Big_Mac_calories
    list["Best Of Royal Cheese"] = best_Of_Royal_Cheese_calories



  return orders.each {
    |elements| sum_cal += list[elements]
  }

  puts "sum cal est : #{sum_cal}"
  puts "cal happy meal = #{happy_meal_calories}"
  puts "cal BigMAc = #{best_Of_Big_Mac_calories}"
  puts "cal Royal= #{best_Of_Royal_Cheese_calories}"
end

calories_counter("French fries", "Happy Meal", "Sprite")



