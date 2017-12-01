class Review
  attr_accessor :restaurant, :customer, :content
  @@all = []
  def initialize(restaurant, content)
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
  # def customer
  #   @customer
  # end
  #
  # def restaurant
  #   @restaurant
  # end
end
