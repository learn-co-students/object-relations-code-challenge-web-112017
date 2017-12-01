require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end










binding.pry

review1 = Review.new(cust_1, new_rest1)
review2 = Review.new(cust_2, new_rest1)
review3 = Review.new(cust_3, new_rest2)
review4 = Review.new(cust_4, new_rest3)
review5 = Review.new(cust_2, new_rest2)
review6 = Review.new(cust_2, new_rest3)
review7 = Review.new(cust_1, new_rest2)


cust_1 = Customer.new("Bill","Hicks")
cust_2 = Customer.new("Jay", "Z")
cust_3 = Customer.new("Bob", "Hope")
cust_4 = Customer.new("Jim", "Lahey")

new_rest1 = Restaurant.new("Chilis")
new_rest2 = Restaurant.new("AppleBees")
new_rest3 = Restaurant.new("Hooters")


