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

    @@all

  end

  def customer

    @customer

  end


  def restaurant

    @restaurant
    
  end

end
