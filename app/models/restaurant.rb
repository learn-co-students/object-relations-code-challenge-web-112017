class Restaurant
  attr_accessor :name



  def initialize(name)
    @name = name
  end

end

def self.all
	Review.all.map do |review|
		review.restaurant
	end
end

def self.find_by_name(name)
	self.all.detect {|restaurant| restaurant.name == name}
end

def reviews
	Review.all.select do |review|
		review.restaurant == self
	end
end

def customers
	self.reviews.map do |review|
		review.customer 
	end
end

end
#Restaurant.all
#returns an array of all restaurants

#Restaurant.find_by_name(name)
#given a string of restaurant name, returns the first restaurant that matches

#Restaurant#reviews
#returns an array of all reviews for that restaurant

#Restaurant#customers
#should return all of the customers who have written reviews of that restaurant.
