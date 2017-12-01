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
    #given a string of a full name, returns
    #the first customer whose full name matches
    search_name = name.split(' ')
    Customer.all.each do |customer|
      if search_name[0] == customer.first_name && search_name[1] == customer.last_name
        return customer
      end
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    #should return an array of all of the customer full names
    Customer.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content)
    #given some content and a restaurant,
    #creates a new review and associates it with that customer and that restaurant
    review = Review.new(restaurant, content, self)
  end
end
