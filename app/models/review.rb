class Review

  attr_accessor :review_restaurant, :review_customer

    @@all = []

  def initialize(restaurant, content, customer)
    @@all << self
    @review_restaurant = restaurant
    @review_content = content
    @review_customer = customer
  end

  def self.all
    # returns all of the reviews
    @@all
  end

  def customer
    # returns the customer for that given review
    self.review_customer
  end

  def restaurant
    # returns the restaurant for that given review
    self.review_restaurant
  end

end
