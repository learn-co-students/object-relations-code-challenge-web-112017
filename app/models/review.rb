class Review
  @@all = []
  #attr_reader  #may need to be accessor
  attr_accessor :customer, :restaurant, :content
  def initialize(restaurant,content)
    @restaurant = restaurant
    @content = content
    @@all << self
    #@customer = nil
  end

  def self.all
    @@all
  end

  #def customer
    #returns the customer for that given review
    #should be from attr_reader
  #end

  #def restaurant
    #returns the restaurant for that given review
    #should be from
  #end
end
