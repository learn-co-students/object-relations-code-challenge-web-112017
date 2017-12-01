class Customer
  attr_accessor :first_name, :last_name, :review

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.select do |customer_array|
      customer_array.first_name + customer_array.last_name == self.full_name
      #customer_array.full_name == (customer.full_name + customer.last_name)
    end
  end

  def self.find_by_first_name(name)
   self.all.select do |customer_array|
      customer_array.first_name == name
   end
  end


  def self.all_names


  end

end
