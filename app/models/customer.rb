class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(fullname)
    self.all.select do |customer|
      customer.full_name == fullname
    end
  end

  def self.find_all_by_first_name(name)
    #look through all Customers.  if the Custoers first name matches, return array of Customers
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end
  

end
