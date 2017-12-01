class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    Review.all.map {|inst| inst.restaurant}
  end

  def reviews
    Review.all.select {|x| x.restaurant == self}
  end

  def customers
    a=Review.all.select {|x| x.restaurant == self}
    a.map {|x| x.customer}
  end

  def self.find_by_name(name)
    Review.all.select {|inst| inst.restaurant.name == name}[0].restaurant
  end

end
