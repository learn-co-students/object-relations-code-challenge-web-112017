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
    #given a string of restaurant name, returns the first restaurant that matches
    Restaurant.all.select do |restaurant|
      restaurant.name.downcase == name.downcase
    end
  end

  def reviews
    #returns an array of all reviews for that restaurant
    myReviews = []
    Review.all.each do |review|
      if review.restaurant == self
        myReviews << review
      end
    end
    myReviews
    # Review.all.select do |review|
    #   review.restaurant == self
    # end
  end

  def customers
    #should return all of the customers who have written reviews of that restaurant.
    myReviewCustomers = []
    Review.all.each do |review|
      if review.restaurant == self
        myReviewCustomers << review.customer
      end
    end
    myReviewCustomers
    # Review.all.select do |review|
    #   review.restaurant
    # end
  end
end
