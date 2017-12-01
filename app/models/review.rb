class Review
  attr_accessor :customer, :restaurant, :content
  @@all = []

  def initialize (customer_instance, restaurant_instance, content)
    @customer = customer_instance
    @restaurant = restaurant_instance
    @content = content
    @@all << self
  end

  def self.all
    #*****************DONE***************
    @@all
    # Review.all
    # returns all of the reviews
  end

  def customer
    #*****************DONE***************
    @customer
    # Review#customer
    # returns the customer for that given review
  end


  def restaurant
    #*****************DONE***************
    @restaurant
    # Review#restaurant
    # returns the restaurant for that given review
  end

end
