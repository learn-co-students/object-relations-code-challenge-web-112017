# Please copy/paste all three classes into this file to submit your solution!

#the Customer class
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    #given a full name string, returns the first customer whos name matches
    self.all.find do |customer|
      customer.full_name.downcase == name.downcase
    end
  end

  def self.find_all_by_first_name(name)

    self.all.select do |customer|
      customer.first_name.downcase == name.downcase
    end

  end

  def self.all_names
    #returns all names
    self.all.collect do |customer|
      customer.full_name
    end

  end

  def add_review(restaurant, content)
    Review.new(content, self, restaurant)
  end


end

#the Restaurant class
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

#the Review class
class Review

  attr_accessor :content, :customer, :restaurant
  @@all = []

  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end
