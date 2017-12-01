require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

siobhan_mahoney = Customer.new("Siobhan", "Mahoney")

binding.pry
