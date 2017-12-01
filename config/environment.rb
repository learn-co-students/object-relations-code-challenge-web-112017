require 'bundler/setup'
require 'pry'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'
Bundler.require
require_all 'app'
