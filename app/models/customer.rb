class Customer
  @@all = []
  attr_accessor :first_name, :last_name

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
    @@all.find do |cust|
      name == "#{cust.first_name} #{cust.last_name}"
    end
  end

  def self.find_all_by_first_name(name)
    @@all.find do |cust|
      name == "#{cust.first_name}"
    end
  end

  def self.all_names
    @@all.map do |cust|
      cust.full_name #"#{cust.first_name} #{cust.last_name}"
    end
  end

  def add_review(restaurant,content) #these are instances not strings
    new_rev = Review.new(restaurant,content) #check what review initializes with
    new_rev.customer= (self) #check what word the initialize uses for customer and make it an accessor 
  end
end
