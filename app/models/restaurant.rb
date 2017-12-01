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
