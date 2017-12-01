require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#declare variables here
david_b = Customer.new("David", "Brennan")
jessica_s = Customer.new("Jessica", "Scott")
mike_m = Customer.new("Mike", "MacDonald")
emma_b = Customer.new("Emma", "Brennan")
jessica_b = Customer.new("Jessica", "Belless")
tom_n = Customer.new("Thomas", "Nelson")

cheesies = Restaurant.new("Cheesies")
potbelly = Restaurant.new("Potbelly")
chipotle = Restaurant.new("Chipotle")
cba = Restaurant.new("Chicago Bagel Authority")
real_deal = Restaurant.new("The Real Deal")

david_b.add_review(potbelly, "It's so good!")
tom_n.add_review(potbelly, "I've had better.'")
tom_n.add_review(cba, "They have great printers.")
tom_n.add_review(cheesies, "I'm a V.I. Cheese.")
jessica_s.add_review(potbelly, "I like the salads.")
jessica_b.add_review(real_deal, "The gluten free menu is good.")
emma_b.add_review(real_deal, "Yuk!")
mike_m.add_review(cba, "Best part of Chicago!")
emma_b.add_review(chipotle, "Eat here all the time.")

binding.pry

#might need a line of code like h = "hello world"
h = "hello"
