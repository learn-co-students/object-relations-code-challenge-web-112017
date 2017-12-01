require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

churchill = Customer.new("Winston", "Churchill")
dad = Customer.new("Alan", "Davis")
rab = Customer.new("RA", "Butler")
puppy = Customer.new("Winston", "Dog")

steakhouse = Restaurant.new("Mortons")
chinese = Restaurant.new("PF Changs")
pizza = Restaurant.new("Sabarro")
pizza2 = Restaurant.new("Sabarro")

yelp1 = dad.add_review(steakhouse, "Loved it")
yelp2 = churchill.add_review(pizza, "Worst ever")
yelp3 = puppy.add_review(pizza, "Declicous")
yelp4 = dad.add_review(chinese, "never again")
yelp5 = puppy.add_review(steakhouse, "so good")
yelp6 = rab.add_review(pizza, "so gross")


binding.pry

binding.pry
"hello_world"
