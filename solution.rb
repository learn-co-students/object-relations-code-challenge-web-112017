# Please copy/paste all three classes into this file to submit your solution!
class Customer
  #class variables and methods

  @@all =[]

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    self.all.detect do |customer_obj|
      customer_obj.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer_obj|
      customer_obj.first_name == first_name
    end
  end

  def self.all_names
    self.all.collect do |customer_obj|
      customer_obj.full_name
    end
  end

  #initialize

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  #instance methods
  attr_accessor :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end


end


class Restaurant
  #class variables and methods

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(rest_name)
    self.all.detect do |rest_object|
      rest_object.name == rest_name
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  #instance methods

  attr_accessor :name

  def reviews
    Review.all.select do |review_obj|
      review_obj.restaurant == self
    end
  end

  def customers
    self.reviews.collect do |review_obj|
      review_obj.customer
    end
  end


end

class Review
  #is join class between Customer, Restaurant

  #class variables and methods
  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  #get/set

  attr_accessor :customer, :restaurant, :content

  #instance methods

end
