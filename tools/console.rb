require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

upland = Restaurant.new("Upland")
gramercy_tavern = Restaurant.new("Gramercy Tavern")
pizza_park = Restaurant.new("Pizza Park")
crave= Restaurant.new("Crave Fish Bar")

matt = Customer.new("Matt", "Faircloth")
kyra = Customer.new("Kyra", "Rosow")
johann = Customer.new("Johann", "Kerr")
ryan = Customer.new("Ryan", "Bures")
john = Customer.new("Ryan,", "Johnson")

matt.add_review(upland, "This restaurant is great!")
kyra.add_review(gramercy_tavern, "This has the best burger.")
johann.add_review(pizza_park, "Pizza is so good!!")
ryan.add_review(crave, "Freshest fish ever.")
ryan.add_review(upland, "mmmmmmm")




binding.pry

hello = "Hello World"
