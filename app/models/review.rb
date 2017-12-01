class Review
  @@all = []
  attr_accessor :customer, :restaurant, :content
  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  ###### Instance Methods ######
  def customer
    self.customer
  end


  def self.all
    @@all
  end

end
