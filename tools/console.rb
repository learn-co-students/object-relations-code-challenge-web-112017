require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer_1 = Customer.new("Adam", "Walter")
customer_2 = Customer.new("Adam", "Walt")
customer_3 = Customer.new("Adam", "Iverson")
customer_4 = Customer.new("Mitch", "Smith")

restaurant_1 = Restaurant.new("slicks")
restaurant_2 = Restaurant.new("colex")
restaurant_3 = Restaurant.new("acapulco")

rev_1 = customer_1.add_review(restaurant_1, "it sucked")
rev_2 = customer_3.add_review(restaurant_2, "it was bad")
rev_3 = customer_4.add_review(restaurant_3, "it was good")
rev_4 = customer_1.add_review(restaurant_3, "it was soso")

def hello_world
  "hello world"
end

binding.pry

hello_world
# maybe declare hello world here
