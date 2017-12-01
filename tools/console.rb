require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a = Customer.new("a", "jones")
b = Customer.new("b", "smith")
c = Customer.new("c", "yates")

a1 = Restaurant.new("a1")
b2 = Restaurant.new("b2")
c3 = Restaurant.new("c3")

cat = Review.new(a, a1)
dog = Review.new(b, b2)
fish = Review.new(c, c3)

binding.pry
h = "hello world"
