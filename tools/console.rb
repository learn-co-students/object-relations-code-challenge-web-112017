require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#customers
jake = Customer.new("Jake", "Smith")
sarah = Customer.new("Sarah", "Jenkins")
mark = Customer.new("Mark", "Turner")
mark_j = Customer.new("Mark", "Jenkins")

#restaraunts
the_bund = Restaurant.new("The Bund")
gios = Restaurant.new("Gios")
atlantic_grill = Restaurant.new("Atlantic Grill")

#reviews
mark_j_review = Review.new(gios, "Terrible", mark_j)

jake.add_review(the_bund, "This place was great!")
sarah.add_review(the_bund, "Terrible service.")
mark.add_review(atlantic_grill, "Lovely decor but expensive.")
jake.add_review(gios, "Best pizza in town!")

binding.pry
#if pry isnt working, try declaring some basic variable below here
hi_pry = "pry started"
