require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

trumanlahr = Customer.new("Truman", "Lahr")
sallyone = Customer.new("Sally", "One")
sallytwo = Customer.new("Sally", "Two")
dudeguy = Customer.new("Dude", "Guy")

fridays = Restaurant.new("Fridays")
mcdonalds = Restaurant.new("McDonalds")

test_review_truman = trumanlahr.add_review(fridays, "I love endless apps!")
test_review_sallyone = sallyone.add_review(fridays, "This place sucks!")
test_review_sallytwo   = sallytwo.add_review(fridays, "Great bar.")

binding.pry

end_of_code = "End of code!"
end_of_code
