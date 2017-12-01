class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    #*****************DONE***************
    @@all
    # Restaurant.all
    # returns an array of all restaurants
  end

  def self.find_by_name(name)
    #*****************DONE***************
    @@all.find { |restaurants| restaurants.name == name  }
    # Restaurant.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
  end

  def reviews
    #*****************DONE***************
    Review.all.select { |reviews| reviews.restaurant == self }
    # Restaurant#reviews
    # returns an array of all reviews for that restaurant
  end

  def customers
    #*****************DONE***************
    self.reviews.collect { |review| review.customer  }
    # Restaurant#customers
    # should return all of the customers who have written reviews of that restaurant.

  end

end
