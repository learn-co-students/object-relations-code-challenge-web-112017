class Review
  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  # def customer
  #   self.customer
  # end
  #
  # def restaurant
  #   self.restaurant
  # end
end
