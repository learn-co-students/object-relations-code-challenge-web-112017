class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|r| r.name == name}
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|r| r.restaurant == self}
  end

  def customers
    Review.all.select {|r| r.restaurant == self}.map { |rev| rev.customer}
  end

end
