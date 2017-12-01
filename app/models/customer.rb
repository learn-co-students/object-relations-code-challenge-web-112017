class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    Review.all.map {|inst| inst.customer}
  end

  def self.find_by_name(name)
    name = name.split
    Review.all.select {|inst| inst.customer.first_name == name[0] && inst.customer.last_name == name[1]}[0].customer
  end

  def self.find_by_first_name(name)
    a=Review.all.select {|inst| inst.customer.first_name == name}
    a.map {|x| x.customer}
  end

  def self.all_names
    Review.all.map {|inst| inst.customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

end
