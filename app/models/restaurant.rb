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

  def reviews
    Review.all.select do |each_review|
      each_review.restaurant == self
    end
  end

  def customers
    Review.all.select do |each_review|
      each_review.restaurant == self
     end.map do |filtered_review|
        filtered_review.customer
     end
   end

   def self.find_by_name(name)
      self.all.select do |rest_array|
         rest_array.name == name
      end
   end
end
