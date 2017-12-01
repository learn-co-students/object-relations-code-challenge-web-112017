class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    #given a stirng, finds the first restaurant that matches
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    #returns an array of customers that have written reviews for a restaurant
    self.reviews.collect do |review|
      review.customer
    end
  end

end
