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
     self.all.find do |person|
       person.full_name == name
     end
   end

  def self.find_all_by_first_name(first_name)
    self.all.select do |person|
      person.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |person|
      person.full_name
    end
  end

  def add_review(restaurant, content)
    review = Review.new(restaurant, content)
    review.customer = self
    review
  end


end
