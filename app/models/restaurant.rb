require_relative '../models/review.rb'
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
    self.all.find{|rest| rest.name == name}
  end

  def reviews
    Review.all.select{|rev| rev.restaurant == self}
  end

  def customers
    reviews.collect{|rev| rev.customer}
  end
end
