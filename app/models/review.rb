class Review

  attr_accessor :customer, :restaurant, :content
  # + Review#customer
  #   + returns the customer for that given review
  # + Review#restaurant
  #   + returns the restaurant for that given review

  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
  #   + returns all of the reviews
    @@all
  end


end
