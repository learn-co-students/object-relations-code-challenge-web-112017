class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end
###### Instance Methods ######
  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(self,restaurant, content)
  end

###### Class Methods ######
  def self.all
    @@all
  end

  def self.find_by_name(fullname)
    self.all.detect {|customer| customer.full_name == fullname}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end
end
