class Restaurant
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  # + Restaurant.all
  #   + returns an array of all restaurants
  def self.all
    @@all
  end

  # + Restaurant.find_by_name(name)
  #   + given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find do |rest|
      rest.name
    end
  end

  # + Restaurant#reviews
  #   + returns an array of all reviews for that restaurant
  def reviews
    @@all
  end

  # + Restaurant#customers
  #   + should return all of the customers who have written reviews of that restaurant.
  def customers
    Restaurant.all.collect do |i|
      i.customer == self
    end
    cust_review.map do |rev|
      rev.
    end
  end

end
