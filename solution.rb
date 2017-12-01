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
    name_array = name.split
    self.all.find do |customer_obj|
      customer_obj.first_name == name_array[0] && customer_obj.last_name == name_array[1]
    end
  end

  def self.find_all_by_first_name(first)
    self.all.select do |customer_obj|
      customer_obj.first_name == first
    end
  end

  def self.all_names
    self.all.map do |name_obj|
      name_obj.full_name
    end
  end

  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content)
    new_review.customer = self
  end

end

class Review
  attr_accessor :restaurant, :content, :customer

  @@all = []

  def initialize(restaurant, content)
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end


class Restaurant
  attr_accessor :name, :customers
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |obj|
      obj.name == name
    end
  end

  def reviews
    Review.all.select do |obj|
      obj.restaurant == self
    end
  end

  def customers
    self.reviews.map do |obj|
      obj.customer
    end
  end
end
