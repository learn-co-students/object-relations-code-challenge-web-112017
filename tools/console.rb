require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

leslie_hsu = Customer.new("Leslie", "Hsu")
sebastian_royer = Customer.new("Sebastian", "Royer")
leslie_jones = Customer.new("Leslie", "Jones")

Customer.find_by_name("Leslie Hsu")
Customer.find_all_by_first_name("Leslie")
Customer.all_names

tomoe = Restaurant.new("Tomoe")
mamouns = Restaurant.new("Mamouns")
tomoe2 = Restaurant.new("Tomoe")
sakamai = Restaurant.new("Sakamai")

leslie_hsu.add_review(tomoe, "Is a wonderful, homey sushi restaurant")
leslie_hsu.add_review(mamouns, "delicious falafel")
sebastian_royer.add_review(mamouns, "pretty good falafel")


#stick instances above here

binding.pry
puts "done!"
#write code here, in order to get to the pry (if not already happening)
