# Please copy/paste all three classes into this file to submit your solution!

class Customer

  @@all = []

  attr_accessor :first_name, :last_name, :reviews

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def add_review(restaurant, content)
    rev = Review.new(restaurant, content)
    rev.customer = self
    @reviews << rev
    rev
  end

  def self.find_by_name(name)
    all.select { |cust| cust.full_name == name  }.first
  end

  def self.find_all_by_first_name(name)
    all.select { |cust| cust.first_name == name }
  end

  def self.all_names
    all.map { |cust| cust.full_name  }
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

end

class Review

  @@all = []

  attr_accessor :restaurant, :content, :customer

  def initialize(restaurant, content)
    @restaurant = restaurant
    @content = content
    restaurant.reviews << self
    @@all << self
  end

  def self.all
    @@all
  end

end

class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.find_by_name(name)
    all.select { |rest| rest.name == name  }.first
  end

  def reviews
    @reviews
  end

  def customers
    reviews.map { |rev| rev.customer  }
  end

  def self.all
    @@all
  end

end
