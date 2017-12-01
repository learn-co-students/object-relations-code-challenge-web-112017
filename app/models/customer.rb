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




#Customer.all
#should return all of the customers

#Customer.find_by_name(name)
#given a string of a full name, returns the first customer whose full name matches

#Customer.find_all_by_first_name(name)
#given a string of a first name, returns an array containing all customers with that first name

#Customer.all_names
#should return an array of all of the customer full names

#Customer#add_review(restaurant, content)
#given some content and a restaurant, creates a new review and associates it with that customer and that restaurant