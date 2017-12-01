class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find { |restaurants| restaurants.name == name  }
  end

  def reviews
    Review.all.select { |reviews| reviews.restaurant == self }
  end

  def customers
    self.reviews.collect { |review| review.customer  }
  end

end
