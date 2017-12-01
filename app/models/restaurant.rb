class Restaurant
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}
    # Customer.all.select do |customer|
    #   self.reviews.any? {|review| review.restaurant == self}
    # end.uniq
  end

##### Class Methods ######
  def self.find_by_name(name)
    self.all.detect {|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end
end
