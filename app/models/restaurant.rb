class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # returns an array of all restaurants
    @@all
  end

  def self.find_by_name(name)
    # given a string of restaurant name,
    # returns the first restaurant that matches
    @@all.find {
      |restaurant|
      restaurant.name == name
    }
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select {
      |review|
      review.review_restaurant == self
    }
  end

  def customers
    # should return all of the customers
    # who have written reviews of that restaurant.
    reviews.map {
      |review|
      review.review_customer
    }
  end

end
