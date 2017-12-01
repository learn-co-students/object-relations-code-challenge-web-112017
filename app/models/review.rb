class Review
  @@all = []
  attr_accessor :customer, :restaurant, :content
  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end


  def self.all
    @@all
  end

end
