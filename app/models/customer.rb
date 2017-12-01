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
