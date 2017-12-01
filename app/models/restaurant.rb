class Restaurant

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |rest|
      name == rest.name
    end
  end

  def reviews
    #returns an array of all reviews for that restaurant
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def customers
    #should return all of the customers who have written reviews of that restaurant
    self.reviews.map do |rev|
      rev.customer
    end 
  end
end
