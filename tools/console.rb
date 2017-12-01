require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

seb = Customer.new("Sebastian", "Royer")
bach = Customer.new("Sebastian", "Bach")
laurel = Customer.new("Laurel", "Preschutti")

upland = Restaurant.new("Upland NYC")
okonomi = Restaurant.new("Okonomi BK")

yum = Review.new(seb, okonomi, "The best special breakfast in NYC!")


# Customer.all
Customer.all
# should return all of the customers
# Customer.find_by_name(name)
Customer.find_by_name("Sebastian Royer")
Customer.find_by_name("Laurel Preschutti")
# given a string of a full name, returns the first customer whose full name matches
# Customer.find_all_by_first_name(name)
Customer.find_all_by_first_name("Sebastian")
# given a string of a first name, returns an array containing all customers with that first name
# Customer.all_names
Customer.all_names
# should return an array of all of the customer full names
# Customer#add_review(restaurant, content)
burgers = seb.add_review(upland, "Delicious Californian inspired fare in NYC.  Try the burger! Stay for the Caccio e Pepe :) *****")
yuck = laurel.add_review(okonomi, "I was not a fan of the sea urchin...  I can't believe Seb made me eat that!  **")
# given some content and a restaurant, creates a new review and associates it with that customer and that restaurant


# Review.all
Review.all
# returns all of the reviews
# Review#customer
yum.customer
# returns the customer for that given review
# Review#restaurant
yum.restaurant
# returns the restaurant for that given review


# Restaurant.all
Restaurant.all
# returns an array of all restaurants
# Restaurant.find_by_name(name)
Restaurant.find_by_name("Okonomi BK")
# given a string of restaurant name, returns the first restaurant that matches
# Restaurant#reviews
upland.reviews
# returns an array of all reviews for that restaurant
# Restaurant#customers
okonomi.customers
# should return all of the customers who have written reviews of that restaurant.

binding.pry
boo = "Hahahahaha!"
