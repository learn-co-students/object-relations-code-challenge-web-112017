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
    # should return all of the customers
    @@all
  end

  def self.find_by_name(name)
    # given a string of a full name,
    # returns the first customer whose full name matches
    @@all.find {
      |user|
      user.full_name == name
    }
  end

  def self.find_all_by_first_name(name)
    # given a string of a first name,
    # returns an array containing all customers
    # with that first name
    @@all.select {
      |user|
      user.first_name == name
    }
  end

  def self.all_names
    # should return an array of all of
    # the customer full names
    @@all.collect {
      |user|
      user.full_name
    }
  end

  def add_review(restaurant, content)
    # given some content and a restaurant,
    # creates a new review and
    # associates it with that customer and that restaurant
    Review.new(restaurant, content, self)
  end

end
