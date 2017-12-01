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

  def self.find_by_name(full_name)
    full_name = full_name.split(' ')
    first_name = full_name[0]
    last_name = full_name[1]
    self.all.find {|c| c.first_name == first_name && c.last_name == last_name }
  end

  def self.find_all_by_first_name(name)
    self.all.select {|n| n.first_name == name}
  end

  def self.all_names
    self.all.map do |customer|
       "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content)
    #given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
    new_rev = Review.new(restaurant, content)
    new_rev.customer = self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
