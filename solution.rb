# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name



  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end


def self.all
	Review.all.map do |review|
		review.customer
	end
end

def self.find_by_name(full_name)
	splitter = full_name.split(" ")
	self.all.find {|name| customer.first_name == splitter[0] && customer.last_name == splitter[1]}
end



def self.find_all_by_first_name(first_name)
	self.all.select {|name| customer.first_name == first_name}
end

def self.all_names
	self.all.map do |customer|
	customer.first_name + customer.last_name
	end
end

def add_review(restaurant, content)
	new_review = Review.new(self, restaurant)
	new_review.content = content
	Review.all << new_review
end

end


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



