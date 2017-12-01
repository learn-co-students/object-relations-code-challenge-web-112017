require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Customers
eric = Customer.new("Eric", "Lum")
#my alter ego
gerald = Customer.new("Gerald", "Danzby")

#Restaurants
chipotle = Restaurant.new('Chipotle')
bangbite = Restaurant.new('BangBite')

#Reviews
eric_chipotle_content = "Chipotle is the best restaurant in the world"
gerald_bangbite_review = "Food was good, but a bit spicy"
review_1 = Review.new(eric, chipotle, eric_chipotle_content)
review_2 = Review.new(gerald, bangbite, gerald_bangbite_review)


binding.pry

woah = 'hold on there partner, we gots some prying to do'
