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

    name = name.split(" ")
    @@all.find do |customer|
      customer.first_name == name[0] && customer.last_name == name[1]
    end

  end

  def self.find_all_by_first_name (name)

    @@all.select { |customer| customer.first_name == name  }

  end

  def self.all_names

    @@all.collect {|customer| "#{customer.first_name} #{customer.last_name}" }

  end

  def add_review (restaurant_instance, content)

    Review.new(self,restaurant_instance, content)

  end

end
