require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

seb = Customer.new("Sebastian", "Royer")
laurel = Customer.new("Laurel", "Preschutti")

upland = Restaurant.new("Upland NYC")
okonomi = Restaurant.new("Okonomi BK")

yum = Review.new(seb, okonomi)



binding.pry
boo = "Hahahahaha!"
