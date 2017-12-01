require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#instances to play with go here
sarah1 = Customer.new("Sarah","Smith")
john = Customer.new("John","Morgan")
theo = Customer.new("Theo","Ferguson")
sarah2 = Customer.new("Sarah","Johnson")

red_lobster = Restaurant.new("Red Lobster")
bakers_pizze = Restaurant.new("Bakers Pizza")
el_rancho = Restaurant.new("El Rancho")
double_wide = Restaurant.new("Double Wide")
super_chix = Restaurant.new("Super Chix")

john_review1 = Review.new(john, red_lobster, "It was fantastic!")
john_review2 = Review.new(john, double_wide, "Too divey for my tastes.")
theo_review = Review.new(theo, red_lobster, "Am I 90 years old? Ew.")
sarah1_review = Review.new(sarah1, super_chix, "I thank god for this chicken.")
sarah2_review = Review.new(sarah2, el_rancho, "I don't remember how I got there but I do remember the nachos. 10/10.")


binding.pry

#if there is an issue with pry hitting, add code here
hello = String.new("Hello World!")
