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
    #******DONE*********************************
    @@all
    # Customer.all
    # should return all of the customers
  end

  def self.find_by_name(name)
    #******DONE*********************************
    name = name.split(" ")
    @@all.find do |customer|
      customer.first_name == name[0] && customer.last_name == name[1]
    end
    # Customer.find_by_name(name)
    # given a string of a full name, returns the first customer whose full name matches
  end

  def self.find_all_by_first_name (name)
    #******DONE*********************************
    @@all.select { |customer| customer.first_name == name  }
    # Customer.find_all_by_first_name(name)
    # given a string of a first name, returns an array containing all customers with that first name
  end

  def self.all_names
    #******DONE*********************************
    @@all.collect {|customer| "#{customer.first_name} #{customer.last_name}" }
    # Customer.all_names
    # should return an array of all of the customer full names
  end

  def add_review (restaurant_instance, content)
    #******DONE*********************************
    Review.new(self,restaurant_instance, content)
    # Customer#add_review(restaurant, content)
    # given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
  end

end
