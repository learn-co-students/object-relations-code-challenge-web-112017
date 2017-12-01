# Please copy/paste all three classes into this file to submit your solution!
class Customer
  @@all = []
  attr_accessor :first_name, :last_name

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
    @@all.find do |cust|
      name == "#{cust.first_name} #{cust.last_name}"
    end
  end

  def self.find_all_by_first_name(name)
    @@all.find do |cust|
      name == "#{cust.first_name}"
    end
  end

  def self.all_names
    @@all.map do |cust|
      cust.full_name #"#{cust.first_name} #{cust.last_name}"
    end
  end

  def add_review(restaurant,content) #these are instances not strings
    new_rev = Review.new(restaurant,content) #check what review initializes with
    new_rev.customer= (self) #check what word the initialize uses for customer and make it an accessor
  end
end

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
