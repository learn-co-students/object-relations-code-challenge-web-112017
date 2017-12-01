class Review
  
	@@all = []

	attr_accessor :customer, :restaurant, :content

	def initialize(customer,restaurant)
		@restaurant = restaurant
		@customer = customer
		@@all << self
	end


	def self.all
		@@all
	end

	def customer
		@@all.select do |review| review.customer == self.customer}
		end 
	end

	def restaurant
		@@all.select {|review| review.restaurant == self.restaurant}
		end
	end



end

#Review.all
#returns all of the reviews

#Review#customer
#returns the customer for that given review

#Review#restaurant
#returns the restaurant for that given review