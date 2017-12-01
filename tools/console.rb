require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#instances for testing
ali_cust = Customer.new("ali","mackay")
ben_cust = Customer.new("ben","lit")
ali = Customer.new("Ali","Mackay")
#test for Customer.all
#test for Customer.find_by_name("ali mackay")
#test for Customer.find_by_name("ben lit")
#test for Customer.find_all_by_first_name("ali")
#test for Customer.find_all_by_first_name("ben")
#test for Customer.all_names

sals = Restaurant.new("sals")
jerrys = Restaurant.new("Jerrys")
cont = "Great"
ali_rev_jerry = Review.new(jerrys,cont)
ben_sals = ben_cust.add_review(sals,cont) #add_review works because the review appears in Reviews.all but this appears as customers sometimes 
#test for Review.all

#test for ben_sals.customer #not working
#test for ben_sals.restaurant #this works

#test for Restaurant.all #this works
#test for Restaurant.find_by_name("sals") #this works


#test for sals.reviews
#test for sals.customers
binding.pry
#Pry.start

"Hello world"
