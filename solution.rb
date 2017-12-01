# Please copy/paste all three classes into this file to submit your solution!
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

  # + Customer.all
  #   + should return all of the customers
  def self.all
    @@all
  end
  # + Customer.find_by_name(name)
  #   + given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    Customer.all.find do |person|
      person.first_name + person.last_name
    end
  end

  # + Customer.find_all_by_first_name(name)
  #   + given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    f_names = Customer.all.collect do |c_i|
      c_i.first_name == self
    end
    f
  end

  # + Customer.all_names
  #   + should return an array of all of the customer full names
  def self.all_names
    Customer.all.collect do |c_i|
      "#{c_i.first_name} #{c_i.lastname}"
    end
  end

  # + Customer#add_review(restaurant, content)
  #   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
  def add_review(restaurant, content)

  end

end

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

class Review
  attr_accessor :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end
  # + Review.all
  #   + returns all of the reviews
  def self.all
    @@all
  end

  # + Review#customer
  #   + returns the customer for that given review
  def customer
    Review.all.select do |review|
      review.collect do |i|
        i.customer == self
      end
    end
  end

  # + Review#restaurant
  #   + returns the restaurant for that given review
  def restaurant

  end

end
