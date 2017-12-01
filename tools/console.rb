require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#create tests here
humzah = Customer.new("Humzah", "Choudry")
joe = Customer.new("Joe", "Brunson")
somebody = Customer.new("Joe", "Somebody")
fat = Customer.new("Fat", "Joe")

de = Restaurant.new("Dank Eats")
gf = Restaurant.new("Gross Foods")
md = Restaurant.new("MacDowells")

binding.pry
x = "x"
