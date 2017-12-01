require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# write code to test here


garry = Customer.new("Garry", "Clerge")
marvin = Customer.new("Marvin", "Clerge")
tiffany = Customer.new("Tiffany", "Torres")
chaz = Customer.new("Charles", "Khan")




piopio = Restaurant.new("Pio Pio")
delfuego = Restaurant.new("Del Fuego")



garry.add_review(piopio, "blah, blah, blah")







binding.pry

Customer.find_all_by_first_name("garry")

fakeres = Restaurant.new("Fake")
#maybe need to have some code below
