class Review

  @@all = []

  attr_accessor :restaurant, :content, :customer

  def initialize(restaurant, content)
    @restaurant = restaurant
    @content = content
    restaurant.reviews << self
    @@all << self
  end

  def self.all
    @@all
  end

end
