require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

george = Customer.new("George", "Weasley")
fred = Customer.new("Fred", "Weasley")
fred2 = Customer.new("Fred", "Smith")
ron = Customer.new("Ron", "Weasley")
another_Ron = Customer.new("Ron", "Weasley")

fred_review = "Burger King is nice"
george_review = "Burger King is nice too"
fred_taco_review = "Taco Bell is the best"

burgerking = Restaurant.new("Burger King")
taco = Restaurant.new("Taco Bell")
anothertaco = Restaurant.new("Taco Bell")


bkreview1 = Review.new(fred_review, fred, burgerking)
bkreview2 = Review.new(george_review, george, burgerking)
tacoreview = Review.new(fred_taco_review, fred, taco)


binding.pry

Customer.find_by_name("Fred Weasley")

#write here
