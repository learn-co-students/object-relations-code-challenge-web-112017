class Review
  attr_accessor :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end
  # + Review.all
  #   + returns all of the reviews
  def self.all
    @@all
  end

  # + Review#customer
  #   + returns the customer for that given review
  def customer
    Review.all.select do |review|
      review.collect do |i|
        i.customer == self
      end
    end
  end

  # + Review#restaurant
  #   + returns the restaurant for that given review
  def restaurant

  end

end
