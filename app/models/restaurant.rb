class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.find_by_name(name)
    all.select { |rest| rest.name == name  }.first
  end

  def reviews
    @reviews
  end

  def customers
    reviews.map { |rev| rev.customer  }
  end

  def self.all
    @@all
  end

end
